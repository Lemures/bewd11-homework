class ShopsController < ApplicationController
    def index

        @shops = Book.find(params[:book_id]).shops

    end

    def new
        @book = Book.find(params[:book_id])
        @shop = Shop.new
    end

    def create
        Book.find(params[:book_id]).shops.create(shop_params)

        redirect_to books_path
    end

    def shop_params
        params.require(:shop).permit(:Name,:Address,:Website,:book_id)
    end
end


