class BillsController < ApplicationController
  def index
    @bills = Bill.all
    render :index
  end

  def new
    @bill = Bill.new(user_id: current_user.id, amount: 0)
  end

  def create
    # Will call setter for each of the hash key value pairs.
    @bill = Bill.new(bill_params)

    if @bill.save
      redirect_to bills_path
    else
      render :new
    end
  end

  def show
    @bill = Bill.find(params["id"])
    render :show
  end

  def destroy
    @bill = Bill.find(params["id"])
    @bill.destroy
    redirect_to bills_path
  end

  def bill_params
    # Whitelist params
    # Returns a hash with only the keys listed in the permit method.
    params.require(:bill).permit(:title, :bill_type, :amount, :user_id)
  end
end
