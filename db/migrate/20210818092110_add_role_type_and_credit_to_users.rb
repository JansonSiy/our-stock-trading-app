class AddRoleTypeAndCreditToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role_type, :string
    add_column :users, :credit, :decimal
  end
end