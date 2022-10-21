class Product < ApplicationRecord
    has_many :cartitems
    has_many :cartitem_carts, through: :cartitems,source: :cart
    def cartitem(product)
        cartitems.create(product_id: product.id)
    end
    
    def uncartitem(product)
        cartitems.find_by(product_id: product.id).destroy
    end

end
