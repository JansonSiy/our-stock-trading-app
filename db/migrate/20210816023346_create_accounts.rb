class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :role
      t.decimal :credit

      t.timestamps
    end
  end
end
