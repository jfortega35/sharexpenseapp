class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(params[:user])

  @user.save
  redirect_to @user
  end

  private
    def user_params
      params.require(:user).permit(:username, :firstname, :lastname, :email, :phone)
    end

end
