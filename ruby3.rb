class PostsController < ApplicationController
  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.new(post_params)
    if @post.save
      redirect_to @topic
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
