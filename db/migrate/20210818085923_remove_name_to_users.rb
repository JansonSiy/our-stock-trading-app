class RemoveNameToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :role_type, :string, null: false, default: ""
    remove_column :users, :name, :string, null: false, default: ""
  end
end
