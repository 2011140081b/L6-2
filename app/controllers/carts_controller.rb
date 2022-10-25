class CartsController < ApplicationController
    def show
        @products = Product.all
        @cartitems = Cartitem.all
        #@cart = Cart.find(params[:id])
    end
end
