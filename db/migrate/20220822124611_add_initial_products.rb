class AddInitialProducts < ActiveRecord::Migration[7.0]
  def up
    5.times do |i|
      Product.create(name: "Product ##{i}")
    end
  end

  def down
    Product.delete_all
  end
end
