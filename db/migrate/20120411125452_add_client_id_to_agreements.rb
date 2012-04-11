class AddClientIdToAgreements < ActiveRecord::Migration
  def change
    add_column :agreements, :client_id, :integer

  end
end
