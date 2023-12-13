class UsersController < ApplicationController
  
  def index
   @user = User.all
  end

  def show
    User.find_by(name: 'sign_out')
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = current_user
  end
  
  private
  def user_params
    params.require(:current_user).permit(:name, :introduction, :profile_image)  
  end
  
end

