class AddItemsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :surname ,:string
    add_column :users, :address ,:string

    remove_column :products , :quality
  end
end
