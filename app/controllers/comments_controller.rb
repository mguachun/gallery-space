class CommentsController < ApplicationController
  
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end


  def new
    if params[:user_id] && @comment = Comment.find(params[:user_id])
      

  end

  def create
  end
end
