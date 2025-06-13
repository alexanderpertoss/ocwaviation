class MainController < ApplicationController
  allow_unauthenticated_access only: %i[ index ]
  before_action :set_cart

  def index
    @products = Product.all.order(created_at: :desc)
    @reviews = Review.all.order(created_at: :desc).limit(3)
  end

  private

    def set_cart
      @cart = Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
         session[:cart_id] = @cart.id
    end
end
