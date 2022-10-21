class CartsController < ApplicationController
    def show
        @products = Product.all
        #@cart = Cart.find(params[:id])
    end
end
