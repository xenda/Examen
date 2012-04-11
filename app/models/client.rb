class Client < ActiveRecord::Base
  has_many :allowed_packages
  has_many :packages, :through => :allowed_packages
  has_many :agreements

  def reduce_stock(quantity)
    self.max_allowed_packages -= quantity
    self.save
  end
end
