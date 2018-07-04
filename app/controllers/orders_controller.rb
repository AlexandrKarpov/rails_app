class OrdersController < ApplicationController

  # GET /orders/new
  def new
    @order = Order.new
  end

  # POST /orders

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

    def order_params
      params.require(:order).permit(:name, :email, :phone)
    end
end
