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

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Book created successfully"
      redirect_to book_path(@book)
    else
      flash[:danger] = "Book creation failed"
      render :new
    end
  end

  def edit
    @book = Book.find_by(id: params[:id])
  end

  def update
    @book = Book.find_by(id: params[:id])
    if @book.update(book_params)
      flash[:success] = "Book updated successfully"
      redirect_to book_path(@book)
    else
      flash[:danger] = "Book update failed"
      render :edit
    end
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    if @book.destroy
      flash[:success] = "Book deleted successfully"
    else
      flash[:danger] = "Book deletion failed"
    end
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author_id, :year, :price, :publish_date)
  end

end