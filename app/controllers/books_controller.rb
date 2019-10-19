class BooksController < ApplicationController
  def show
  end

  def create
  end

  def edit
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def update
  end

  def index
  end
end
