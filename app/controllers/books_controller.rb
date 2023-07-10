class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/show'
  end

  def index
    @books = Book.all
  end
  
  def show
  end
  
  def edit
  end
  
  private
  def book_params
    params.reuquire(:book).permit(:title, :body)
  end
end
