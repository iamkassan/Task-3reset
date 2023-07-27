class BooksController < ApplicationController
 def new
  @book = Book.new
 end
 
  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end
   # 投稿データの保存
  def create
    book = Book.new(book_params)
    book.user_id = (current_user.id)
    book.save
    redirect_to books_path
  end

  def show
    
  end

  def edit
  end

  # 投稿データのストロングパラメータ
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
