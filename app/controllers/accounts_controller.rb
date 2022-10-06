class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new  
  end
  def create
    @account = Account.new(accounts_params)
    if @account.save
      redirect_to @account
    else
      render :new, status: :unprocessable_entity
    end
  end

  def account_creation
    return render json: {message: "Account with this supplier ID is already exist"} if Supplier.find_by(id: accounts_params[:supplier_id]).account.present?
    accounts_params[:supplier_id]
    @account = Account.new(accounts_params)
    if @account.save
      render json: @account
    else
      render json: {message: "wrong!"}
    end
  end

   

  def show
    @account = Account.find(params[:id])
  end

  private

  def accounts_params
    params.require(:account).permit(:supplier_id, :account_number)
  end

end
