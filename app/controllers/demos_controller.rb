class DemosController < ApplicationController
  def index
    @demos = Demo.all
  end

  def new
    @demo = Demo.new
  end

  def create
    @demo = Demo.new(demos_params)
    if @demo.save
      redirect_to @demo
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @demo = Demo.find(params[:id])
  end

  private

  def demos_params
    params.require(:demo).permit(:name, :user_name , :role, :email, :password ,:password_confirmation, :age)
  end

end
