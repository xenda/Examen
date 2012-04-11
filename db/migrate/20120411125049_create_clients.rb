class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :max_allowed_packages
      t.string :allowed_packages_kind
      t.text :pickup_address
      t.text :delivery_address

      t.timestamps
    end
  end
end
