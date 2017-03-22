class UserController < ApplicationController
  def index
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:result] = user_params
      if session[:count]
        session[:count] = session[:count] + 1
      else
        session[:count] = 1
      end
      flash[:success] = "Thanks for submitting this form! You have submitted this\
      form #{session[:count]} times now."
      redirect_to "/result"
    else
      flash[:error] = "You tried to submit invalid information!"
      redirect_to "/"
    end
  end

  def result
    @user = session[:result]
  end

  private
    def user_params
      params.require(:user).permit(:name, :location, :language, :comment)
    end
end
