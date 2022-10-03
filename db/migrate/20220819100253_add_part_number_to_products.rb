class AddPartNumberToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :part_number, :string, index: true
    add_index :products, :part_number
  end
end
