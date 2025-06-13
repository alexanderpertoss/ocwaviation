class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :products, through: :cart_items

  def add_product(product_id)
    item = cart_items.find_by(product_id: product_id)
    if item
      item.quantity += 1
    else
      item = cart_items.build(product_id: product_id, quantity: 1)
    end
    item.save
  end

  def total_price
    cart_items.includes(:product).map { |item| item.quantity * item.product.price }.sum
  end

  def includes_product?(product)
    cart_items.exists?(product_id: product.id)
  end
end
