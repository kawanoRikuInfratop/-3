class BooksController < ApplicationController
  
  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end
  
  def create
    book = Book.new(book_params)
    user = current_user
  
    book.user_id = current_user.id
    
    if book.save
      flash[:notice] = "You have created book successfully."
      redirect_to user_path(user)
    else
      render books_path
    end
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title,:option)
  end
  
end
