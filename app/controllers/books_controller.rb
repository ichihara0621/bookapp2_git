#class BooksController < ApplicationController
#  before_action :logged_in_user, only: [:index, :edit, :update]
#  before_action :correct_user,   only: [:edit, :update]
#
#  def show
#  end
#
#  def create
#  end
#
#  def edit
#  end
#
#  def destroy
#    Book.find(params[:id]).destroy
#    flash[:success] = "Book deleted"
#    redirect_to users_url
#  end
#
#  def update
#  end
#
#  def index
#    @book = Book.all
#  end
#end

class BooksController < ApplicationController
  def show
    @books = Book.find(params[:id])
  end
  
  def index
    @books = Book.paginate(page: params[:page])
  end

  def edit
    @books  = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:success] = "Book updated"
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    flash[:success] = "Book deleted"
    redirect_to books_url
  end

private

  def book_params
     params.require(:book).permit(:title, :author, :genre)
  end

end