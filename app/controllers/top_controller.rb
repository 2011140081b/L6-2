class TopController < ApplicationController
    def main
        @products = Product.all
        
    end
end
