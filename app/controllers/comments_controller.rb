class CommentsController < ApplicationController
  
  # before_action :redirect_if_not_logged_in 

  def index
  
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
    @work = @comment.work
    current_user
  end

  def new
    @work = Work.find(params[:work_id])
    if @work 
      @comment = @work.comments.build
    else 
      redirect_to works_path
    end
  end
  

  def create
    @work = Work.find(params[:work_id])

      @comment = @work.comments.create(comment_params)
      @comment.user = current_user
  
    if @comment.save
         redirect_to works_path
      else
        render :new
      end
    end


  def edit 
     @comment = Comment.find(params[:id])
     if @comment.user == current_user
    @work = @comment.work 
    else 
      redirect_to works_path
    end
  end

  def latest_comments
    @comments = Comment.latest_user_comments
  end


  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    if @comment.valid?
        redirect_to comments_path 
    else
        render :edit 
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path 
  end

  private

  def comment_params
    params.require(:comment).permit(:headline, :description)
  end
end

