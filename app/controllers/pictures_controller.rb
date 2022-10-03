class PicturesController < ApplicationController
	before_action :set_employee

	def index 
		@pictures = Picture.all 
	end

	def new 
		@picture = @imageable.pictures.new
	end

	def create

		@picture = @imageable.pictures.new(picture_params)
		if @picture.save
			redirect_to employee_path(@imageable)
		else
			render :new , status: :unprocessable_entity
		end
	end

	def show 
		@picture = Picture.find(params[:id])
	end

	private

	def set_employee
		@imageable =	Employee.find_by(id: params[:employee_id]) if params[:employee_id]
		@imageable = Product.find_by(id: params[:product_id]) if params[:product_id]
	end

	def picture_params
		params.require(:picture).permit(:name, :image)
	end

end
