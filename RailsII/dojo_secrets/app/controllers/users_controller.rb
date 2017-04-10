class UsersController < ApplicationController
  # registers new user account
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/sessions/new"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/users/new"
    end
  end

  # displays page with user info and personal secrets
  def show
    @user = User.find(session[:user_id])
    @secrets = Secret.where(user:@user)
  end

  # displays page that allows user to edit information
  def edit
    @user = User.find(session[:user_id])
  end

  # updates user information
  def update
    @user = User.find(session[:user_id])
    @user.update(user_params)
    if @user.save
      redirect_to "/users/#{@user.id}"
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to "/users/#{@user.id}/edit"
    end
  end

  # deletes user account
  def destroy
    User.find(session[:user_id]).destroy
    session[:user_id] = nil
    redirect_to "/users/new"
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
