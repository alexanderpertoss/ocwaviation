class FixCartItemProductForeignKey < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :cart_items, :products

    add_foreign_key :cart_items, :products, on_delete: :cascade
  end
end
