class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user.id)
  end

  def index
   @user = User.all
  end

  def show
    User.find_by(name: 'sign_out')
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to current_user
    end

      @user = User.find(params[:id])
    end

  def update

    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to books_path
    end

    @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] = "You have updated user successfully."
        redirect_to user_path(@user.id)
      else
        render :edit
      end
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end

