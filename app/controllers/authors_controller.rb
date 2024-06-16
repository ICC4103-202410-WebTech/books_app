class AuthorsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @authors = Author.all.order(:first_name, :last_name)
  end

  def show
    @author = Author.find_by(id: params[:id])
    @books = @author.books
  end

  def new
    @author = Author.new
    puts "session: #{session[:user_id]}"
  end

  def search
    string = params[:text]
    @authors = Author.where("first_name LIKE ? OR last_name LIKE ?", "%#{string}%", "%#{string}%")
    render layout: false
  end

  def create
    puts "params: #{params}"
    author = Author.new(author_params)

    respond_to do |format|
      if author.save
        format.html { redirect_to authors_path }
        format.json { render json: author.to_json }
      else
        format.html { redirect_to new_author_path }
        format.json { render json: author.errors }
      end
    end
  end

  def edit
    @author = Author.find_by(id: params[:id])
  end

  def update
    author = Author.find_by(id: params[:id])

    if author.update!(author_params)
      redirect_to authors_path
    else
      render :edit
    end
  end

  def destroy
    author = Author.find_by(id: params[:id])
    author.destroy
    redirect_to authors_path
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :age, books_attributes: [:title, :year, :price, :publish_date])
  end
end
