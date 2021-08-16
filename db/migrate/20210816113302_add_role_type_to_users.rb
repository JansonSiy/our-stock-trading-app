class AddRoleTypeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role_type, :string
  end
end
