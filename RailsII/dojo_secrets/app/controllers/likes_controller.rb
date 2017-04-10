class LikesController < ApplicationController
  # likes a secret
  def create
    Like.create(secret_id: params[:secret], user: current_user)
    redirect_to "/secrets"
  end

  # dislikes a secret
  def destroy
    Like.find(params[:id]).destroy
    redirect_to "/secrets"
  end
end
