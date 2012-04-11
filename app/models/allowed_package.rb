class AllowedPackage < ActiveRecord::Base
  belongs_to :client
  belongs_to :package
end
