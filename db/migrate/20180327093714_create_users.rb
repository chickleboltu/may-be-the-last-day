class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :password_salt
    end
   # change_column :users, :dob, :string
  end
end
