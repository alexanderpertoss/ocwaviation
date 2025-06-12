class CartsController < ApplicationController
  before_action :set_cart
  before_action :set_cart_item, only: [ :increment_item, :decrement_item ]
  allow_unauthenticated_access

    def show
      @items = @cart.cart_items.includes(:product)
      @items_string = "Hola, OCW Aviation. Deseo confirmar mi pedido: \n"
      @items.each do |item|
        @items_string << "- *" + item.product.name + "*, *cantidad:* " + item.quantity.to_s + ", *precio unitario:* Bs. " + item.product.price.to_s + ", *subtotal:* Bs. " + (item.quantity*item.product.price).to_s + "\n"
      end
      @items_string << "\n" + "*PRECIO TOTAL:* " + @cart.total_price.to_s + "Bs."
    end

    def add_item
      @cart.add_product(params[:product_id])
      redirect_to cart_path, notice: "Product added to cart."
    end

    def confirm
    end

    def delete_current
      @cart.cart_items.destroy_all
      @cart.delete
      redirect_to cart_path
    end

    def increment_item
      @cart_item.quantity += 1
      @cart_item.save
      redirect_to cart_path
    end

    def decrement_item
      if @cart_item.quantity > 1
        @cart_item.quantity -= 1
        @cart_item.save
      else
        @cart_item.delete
      end
      redirect_to cart_path
    end

    private

    def set_cart
      @cart = Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
         session[:cart_id] = @cart.id
    end

    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end
end
