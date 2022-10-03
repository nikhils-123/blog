class ChangeProductsPrice < ActiveRecord::Migration[7.0]
  def up
    change_table :products do |t|
      t.change :quality, :integer
    end
  end

  def down
    change_table :products do |t|
      t.change :quality, :string
    end
  end
end

