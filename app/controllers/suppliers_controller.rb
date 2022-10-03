class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new  
  end
  def create
    @supplier = Supplier.new(suppliers_params)
    if @supplier.save
      redirect_to @supplier
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  private

  def suppliers_params
    params.require(:supplier).permit(:name)
  end


end
