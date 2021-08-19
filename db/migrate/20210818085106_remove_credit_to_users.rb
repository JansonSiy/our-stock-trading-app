class RemoveCreditToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :credit, :decimal
  end
end
