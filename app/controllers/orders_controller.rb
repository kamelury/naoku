class OrdersController < ApplicationController
  def index
     @orders = Order.find(:all, :order => :name)
     
    respond_to do |format|
      format.html # index.html.erb
    end
  end
 
 def show
    @order = Order.find(params[:id])
    @items = @order.line_items
    @total = 0 
    @items.each do |item|
      @total += item.total_price
    end
    respond_to do |format|
      format.html # show.html.erb  
    end
 end

def destroy
      @order = Order.find(params[:id])
    begin
      @order.destroy
      flash[:notice] = "Order of #{@order.name} deleted"
    rescue Exception => e
      flash[:notice] = e.message
    end

    respond_to do |format|
      format.html { redirect_to(orders_url) }
    end
end

def mark_sent
  
end

end
