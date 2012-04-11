class CreateAllowedPackages < ActiveRecord::Migration
  def change
    create_table :allowed_packages do |t|
      t.integer :client_id
      t.integer :package_id

      t.timestamps
    end
  end
end
