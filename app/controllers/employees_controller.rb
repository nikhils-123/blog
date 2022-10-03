class EmployeesController < ApplicationController

	def index
		@employees = Employee.all 
	end

	def new 
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(employees_params)
		if @employee.save
			redirect_to @employee
		else
			render :new , status: :unprocessable_entity
		end
	end

	def show 
		@employee = Employee.find(params[:id])
		@picture = @employee.pictures
	end

	private

	def employees_params
		params.require(:employee).permit(:name)
	end

end
