class AddCreditToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :credit, :decimal
  end
end
