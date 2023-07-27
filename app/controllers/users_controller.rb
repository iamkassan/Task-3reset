class UsersController < ApplicationController
  
  def index
    @users = User.all
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  def show
  end

  def edit
  end
 # 投稿データのストロングパラメータ
  private

  def book_params
    params.require(:book).permit(:name, :profile_image, :introduction)
  end
end
