class AccountHistoriesController < ApplicationController
  
  def index
    @account_histories = AccountHistory.all
  end

  def new
    @account_history = AccountHistory.new  
  end
  def create
    @account_history = AccountHistory.new(account_histories_params)
    if @account_history.save
      redirect_to @account_history
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @account_history = AccountHistory.find(params[:id])
  end

  private

  def account_histories_params
    params.require(:account_history).permit(:account_id , :credit_rating)
  end

end