class CartitemsController < ApplicationController
    def new
        @cartitem = Cartitem.new
    end
    


    def create
        #product = Product.find(params[:product_id])
        #product.cartitem(current_cart)
        #logger.debug(product)
    
      
        @cartitem = Cartitem.new(qty: params[:qty])
        redirect_to '/carts/show'
    end
    
    def destroy
        product = Product.find(params[:id])
        product.uncartitem(current_cart)
        redirect_to  '/top/main'
    end
end
