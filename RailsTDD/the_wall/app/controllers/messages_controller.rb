class MessagesController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @messages = Message.where(user:@user)
  end

  def create
    @user = User.find(session[:user_id])
    @message = Message.new(content:params[:content], user:@user)
    if !@message.save
      flash[:notice] = @message.errors.full_messages
    end
    redirect_to messages_path
  end
end
