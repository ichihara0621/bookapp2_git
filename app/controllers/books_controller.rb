class BooksController < ApplicationController
  def show
    @books = Book.find(params[:id])
  end

  def new
    @books = Book.new
  end
  
  def index
    @books = Book.paginate(page: params[:page])
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
    @books = Book.new(params[:book])
    #if 
      @books.save
      log_in@books
      flash[:success] = "Book Insert!"
      redirect_to @books
    #else
    #  render 'new'
    #end
  end

 private

  def book_params
     params.require(:book).permit(:title, :author, :genre)
  end

end