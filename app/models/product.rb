class Product < ApplicationRecord
	self.table_name = "products"
	has_many :pictures, as: :imageable
end
