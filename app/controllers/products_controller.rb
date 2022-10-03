class ProductsController < ApplicationController

	def index
		@products = Product.all 
	end

	def new 
		@product = Product.new
	end

	def create 
		@product = Product.new(products_params)
		if @product.save
			redirect_to @product
		else
			render :new , status: :unprocessable_entity
		end
	end

	def show 
		@product = Product.find(params[:id])
		@picture = @product.pictures
	end

	private

	def products_params
		params.require(:product).permit(:name)
	end

end
