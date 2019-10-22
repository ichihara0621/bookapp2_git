class BooksController < ApplicationController
    before_action :logged_in_user

  def show
    @books = Book.find(params[:id])
  end

  def new
    @books = Book.new
  end
  
  def index
  @books = if params[:search]
      #searchされた場合は、原文+.where('name LIKE ?', "%#{params[:search]}%")を実行
      Book.paginate(page: params[:page]).where('title LIKE ?', "%#{params[:search]}%")
    else
      #searchされていない場合は、原文そのまま
      Book.paginate(page: params[:page])
    end
  end

  def edit
    @books  = Book.find(params[:id])
  end

  def update
    @books = Book.find(params[:id])
    if   @books.update_attributes(book_params)
      flash[:success] = "Book updated"
      redirect_to @books
    else
      render 'edit'
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    flash[:success] = "Book deleted"
    redirect_to books_url
  end

  def create
    @books = Book.new(book_params)
    if 
      @books.save
      log_in@books
      flash[:success] = "Book Insert!"
      redirect_to @books
    else
      render 'new'
    end
  end

 private

  def book_params
     params.require(:book).permit(:title, :author, :genre)
  end

  def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
  end
end