class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = Comment.all
  end

  def show 
    @post = Post.find(params[:post_id])
    @Comment = Comment.find(params[:id])
  end 

  def new 
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new 
  end 

  def create 
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(commnet_params)

    if @comment.save 
      redirect_to @post 
    else 
      render :new , status: :unprocessable_entity
    end 
  end

end
