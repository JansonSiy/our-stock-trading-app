class Accounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :role_type
      t.decimal :credit

      t.timestamps
    end
  end
end
