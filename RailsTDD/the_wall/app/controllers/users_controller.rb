class UsersController < ApplicationController
  def create
    @user = User.find_by(username:params[:username])
    if @user
      session[:user_id] = @user.id
      redirect_to messages_path
    else
      flash[:notice] = ["Username not found. Will register new user now."]
      @user = User.create(username:params[:username])
      redirect_to new_user_path
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = ["Successfully logged out."]
    redirect_to new_user_path
  end
end
