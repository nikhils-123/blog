class AssembliesController < ApplicationController

  def index
    @assemblies = Assembly.all
  end

  def new
    @assembly = Assembly.new  
  end
  def create
    @assembly = Assembly.new(assemblies_params)
    if @assembly.save
      redirect_to @assembly  
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @assembly = Assembly.find(params[:id])
  end

  def edit
    @assembly = Assembly.find_by(id: params[:id])
  end

  def update
    @assembly = Assembly.find_by(id: params[:id])
    @part = Part.find_by(id: params[:assembly][:part_id])
    @assembly.parts << @part
    redirect_to assembly_path(@assembly)
  end

  private

  def assemblies_params
    params.require(:assembly).permit(:name)
  end

end
