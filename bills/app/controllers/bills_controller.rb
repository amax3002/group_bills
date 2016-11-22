class BillsController < ApplicationController
  def index
    @bills = Bill.all
    render :index
  end

  def new
    @bill = Bill.new(user_id: current_user.id)
  end

  def create
    @bill = Bill.new(bill_params)

    if @bill.save
      redirect_to bills_path
    else
      render :new
    end
  end

  def bill_params
    params.require(:bill).permit(:title, :label_type, :description, :user_id)
  end
end
