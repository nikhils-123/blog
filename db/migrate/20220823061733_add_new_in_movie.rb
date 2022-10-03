class AddNewInMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies , :producer , :string
    change_column :movies , :budget , :string
  end
end
