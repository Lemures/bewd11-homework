class BooksController < ApplicationController
    def index
        @books = Book.all

        @bookAdd = Book.new

        render "index"
    end

    def create
        book = Book.create(book_params)

        redirect_to "/books"

    end

    def edit

        @book = Book.find(params[:id])

        render "edit"
    end

    def update

        book = Book.find(params[:id])

        book.update_attributes(book_params)

        redirect_to "/books"

    end

    def destroy

        book = Book.find(params[:id])

        book.destroy

        redirect_to books_path
    end

private

    def book_params
        params.require(:book).permit(:title,:author,:releaseDate,:imgScr)
    end

end
