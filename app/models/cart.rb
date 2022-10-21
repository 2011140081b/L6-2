class Cart < ApplicationRecord
    has_many :cartitems
    has_many :cartitem_products, through: :cartitems,source: :product
    def cartitem(product)
        cartitems.create(product_id: product.id)
    end
    
    def uncartitem(product)
        cartitems.find_by(product_id: product.id).destroy
    end
end
