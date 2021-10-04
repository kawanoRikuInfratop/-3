class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end
  
  def index
    @users = User.all
    @book = Book.new
  end
  
  def show
    @user = User.find(params[:id])
    @book = Book.new
  end
  
end
