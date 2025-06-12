class CartsController < ApplicationController
	before_action :set_cart

	  def show
	    @items = @cart.cart_items.includes(:product)
	    @items_string = "Hola, OCW Aviation. Deseo confirmar mi pedido que consta de: \n"
	    @items.each do |item|
	    	@items_string << "- " + item.product.name + ", cantidad: " + item.quantity.to_s + ", precio unitario: " + item.product.price.to_s + "Bs. " + "\n"
	    end
	    @items_string << "\n" + "PRECIO TOTAL: " + @cart.total_price.to_s + "Bs."
	  end

	  def add_item
	    @cart.add_product(params[:product_id])
	    redirect_to cart_path, notice: "Product added to cart."
	  end

	  def confirm
	  	
	  end

	  private

	  def set_cart
	    @cart = Cart.find(session[:cart_id])
	  rescue ActiveRecord::RecordNotFound
	    @cart = Cart.create
	    session[:cart_id] = @cart.id
	  end
end
