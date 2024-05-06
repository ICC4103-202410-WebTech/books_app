class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find_by(id: params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.new(author_params)
    if author.save!
      flash[:success] = "Author created successfully"
      redirect_to authors_path
    else
      flash[:danger] = "Author creation failed"
      render :new
    end
  end

  def edit
    @author = Author.find_by(id: params[:id])
  end
  
  def update
    author = Author.find_by(id: params[:id])
    if author.update(author_params)
      flash[:success] = "Author updated successfully"
      redirect_to authors_path
    else
      flash[:danger] = "Author update failed"
      render :edit
    end
  end

  def destroy
    author = Author.find_by(id: params[:id])
    if author.destroy
      flash[:success] = "Author deleted successfully"
    else
      flash[:danger] = "Author deletion failed"
    end
    redirect_to authors_path
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :age)
  end
end
