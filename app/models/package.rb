class Package < ActiveRecord::Base
  has_many :package_items
  has_many :allowed_packages
  has_many :clients, :through => :allowed_packages
  has_many :agreements
end
