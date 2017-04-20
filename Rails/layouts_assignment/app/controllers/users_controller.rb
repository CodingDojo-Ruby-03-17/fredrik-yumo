class UsersController < ApplicationController
  def index
    @users = User.all
    render layout: "two_column"
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      flash[:success] = "New user successfully added!"
    else
      flash[:error] = @user.errors.full_messages
    end
    redirect_to "/users"
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :favorite_language)
    end
end
