class UsersController < ApplicationController
  
  def index
    @users = User.all
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  def show
    @book = Book.new
    @books = @user.books
    @user = User.find(params[:id])
  end

  def edit
   @user = User.find(params[:id])
  end
 # 投稿データのストロングパラメータ
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end