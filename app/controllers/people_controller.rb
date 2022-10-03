class PeopleController < ApplicationController
  def index
    @persons = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(persons_params)
    if @person.save
      redirect_to @person
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  private

  def persons_params
    params.require(:person).permit(:name, :email, :confirmation,:start_date,:end_date , :subdomain , :message , :password , :registration_number ,:bio)
  end

end
