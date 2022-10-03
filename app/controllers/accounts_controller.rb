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

  def show
    @account = Account.find(params[:id])
  end

  private

  def accounts_params
    params.require(:account).permit(:supplier_id, :account_number)
  end

end
