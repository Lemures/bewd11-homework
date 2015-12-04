class ShopsController < ApplicationController
    def index
        @shops = Books.find(params[:book_id]).shops
    end

    def new
        @book = Books.find(params[:book_id])

        @shop = Shops.new
    end

    def create
        Books.find(params[:book_id]).shops.create(shop_params)

        redirect_to books_path
    end

    def shop_params
        params.require(:shop).permit(:Name,:Address,:Website,:book_id)
    end
end


