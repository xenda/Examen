# encoding: UTF-8
class Agreement < ActiveRecord::Base
  belongs_to :client
  belongs_to :package

  validates_presence_of :starting_at, :ending_at, :quantity, :client_id, :package_id
  validate :business_rules
  
  after_create :update_stocks
  def kind
    if less_than_year?
      "Marco"
    else
      "Locales"
    end
  end

  def update_stocks
    client.reduce_stock(self.quantity) if client
    update_items
  end

  def update_items
    self.quantity.times do
      item = self.package.package_items.create
      item.mark_as_assigned
    end
  end

  def business_rules
    if more_packages_than_allowed?
      errors.add :base, "Elegió más paquetes de los que tiene permitidos." 
    end

    if package_kind_not_allowed?
      errors.add :base, "El tipo de paquete no está disponble para este cliente" 
    end

    if incongruent_dates?
      errors.add :base, "La fecha de inicio no puede ser mayor a la final"
    end

    if shorter_than_allowed?
      errors.add :base, "El periodo debe ser mayor a dos meses"
    end
  end

  def more_packages_than_allowed?
    return false unless client
    self.client.max_allowed_packages < self.quantity
  end

  def incongruent_dates?
    self.starting_at > self.ending_at
  end

  def shorter_than_allowed?
    period < 2.months
  end

  def package_kind_not_allowed?
    return false unless client
    !self.client.packages.include? self.package
  end

  def period
    self.ending_at - self.starting_at
  end

  def less_than_year?
    period < 1.year
  end

end
