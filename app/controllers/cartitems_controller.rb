class CartitemsController < ApplicationController
    def new
        @cartitem = Cartitem.new(product_id: params[:product_id])
    end
    


    def create
        #product = Product.find(params[:product_id])
        #product.cartitem(current_cart)
        #logger.debug(product)
    
      
        cart =Cartitem.new(qty: params[:cartitem][:qty],cart_id: current_cart.id, product_id: params[:cartitem][:product_id])
        cart.save
        redirect_to '/carts/show'
    end
    
    def destroy
        cartitem = Cartitem.find(params[:id])
        cartitem.destroy
        redirect_to  '/carts/show'
    end
end
