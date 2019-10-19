class BooksController < ApplicationController
  def show
    @user = Book.find(params[:id])
  end

  def new
  end
end
