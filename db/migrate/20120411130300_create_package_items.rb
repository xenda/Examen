class CreatePackageItems < ActiveRecord::Migration
  def change
    create_table :package_items do |t|
      t.integer :package_id
      t.string :state
      t.integer :agreement_id

      t.timestamps
    end
  end
end
