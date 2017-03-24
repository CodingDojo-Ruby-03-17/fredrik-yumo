class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
    render layout: "three_column"
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      flash[:success] = "Successfully made a new post!"
    else
      flash[:error] = @post.errors.full_messages
    end
    redirect_to "/posts"
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end
end
