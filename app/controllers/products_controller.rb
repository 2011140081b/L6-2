class ProductsController < ApplicationController
    def index
        @products = Product.all
        render 'carts/show'
    end
    
    def new
        @product = Product.new
    end
    
    def create
        @product = Product.new(name: params[:product][:name],price: params[:product][:price])
        if  Product.find_by(name: params[:product][:name]) ==nil
          @product.save
          redirect_to '/' #=>一覧ページにリダイレクトする
        else
          render 'error'
        end
    end
    
    def destroy
        @product = Product.find(params[:id])
       
        @product.destroy
        redirect_to '/'
    end
    
end
