class PackageItem < ActiveRecord::Base

  belongs_to :package
  STATES = ["En Stock", "Asignado", "Mantenimiento", "Devuelto"]

  def mark_as_assigned
    self.state = STATES[1]
    self.save
  end

end
