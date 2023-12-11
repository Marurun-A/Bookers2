class UsersController < ApplicationController
  def index
    @users = User.page(params[:page]).per(3).reverse_order
  end

  def show
    User.find_by(name: 'sign_out')
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
  end
end
