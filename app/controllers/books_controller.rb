class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params[:id])
    @genres = @book.genres
  end

  def new
    @book = Book.new
  end

end