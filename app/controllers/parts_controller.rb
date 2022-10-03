class PartsController < ApplicationController

  def index
    @parts = Part.all
  end

  def new
    @part = Part.new  
  end
  def create
    @part = Part.new(parts_params)
    if @part.save
      redirect_to @part  
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @part = Part.find(params[:id])
  end

  def edit
    @part = Part.find_by(id: params[:id])
  end

  def update
    @part = Part.find_by(id: params[:id])
    @assembly = Assembly.find_by(id: params[:part][:assembly_id])
    @part.assemblies << @assembly
    redirect_to part_path(@part)
  end
  

  private

  def parts_params
    params.require(:part).permit(:part_number)
  end

end
