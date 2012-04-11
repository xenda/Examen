class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :kind
      t.integer :capacity
      t.string :dimensions
      t.string :material

      t.timestamps
    end
  end
end
