class CreateDemos < ActiveRecord::Migration[7.0]
  def change
    create_table :demos do |t|
      t.string :name 
      t.string :user_name
      t.string :role 
      t.string :email 
      t.string :password
      t.string :password_confirmation
      t.integer :age
      t.timestamps
    end
  end
end
