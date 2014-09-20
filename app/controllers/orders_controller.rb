class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # POST /orders
  # POST /orders.json
  def create
    keys = params[:order][:custom].split("-")
    order = Order.new
    order.snippet_id = keys[1]
    order.user_id = keys[0]
    order.usd_amount = params[:order][:total_native][:cents].to_i / 100
    order.coinbase_id = params[:order][:id]
    order.coinbase_code = params[:order][:button][:id]
    order.amount = params[:order][:total_btc][:cents].to_f / 100000000.0
    order.save!
    render nothing: true, status: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:snippet_id, :user_id, :amount, :usd_amount, :coinbase_id, :coinbase_code)
    end
end
