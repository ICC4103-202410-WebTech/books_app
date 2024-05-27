class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @books = Book.all.preload(:author).order(:id)
  end

  def show
    @book = Book.find_by(id: params[:id])
    @genres = @book.genres
  end

  def new
    @book = Book.new
    if params[:author_id].present?
      @book.author = Author.find_by(id: params[:author_id])
    end
    @authors = Author.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book created successfully"
      redirect_to book_path(@book)
    else
      flash[:error] = "Book creation failed"
      redirect_to new_book_path
    end
  end

  def edit
    @book = Book.find_by(id: params[:id])
    @authors = Author.all
  end

  def update
    @book = Book.find_by(id: params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book update successfully"
      redirect_to book_path(@book)
    else
      flash[:error] = "Book update failed"
      redirect_to edit_book_path(@book)
    end
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    if @book.destroy
      flash[:notice] = "Book deleted successfully"
    else
      flash[:error] = "Book deletion failed"
    end
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author_id, :year, :price, :publish_date)
  end

end
