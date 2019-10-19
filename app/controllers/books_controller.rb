class BooksController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]

  def show
  end

  def create
  end

  def edit
  end

  def destroy
    Book.find(params[:id]).destroy
    flash[:success] = "Book deleted"
    redirect_to users_url
  end

  def update
  end

  def index
    @book = Book.all
  end
end
