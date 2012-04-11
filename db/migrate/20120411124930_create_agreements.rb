class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.datetime :starting_at
      t.datetime :ending_at
      t.string :kind
      t.integer :quantity

      t.timestamps
    end
  end
end
