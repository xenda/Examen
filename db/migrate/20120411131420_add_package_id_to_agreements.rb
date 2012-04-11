class AddPackageIdToAgreements < ActiveRecord::Migration
  def change
    add_column :agreements, :package_id, :integer

  end
end
