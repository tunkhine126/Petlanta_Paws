class CommentsController < ApplicationController
  before_action :require_login

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to pet_path(@comment.pet)
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to pet_path(@comment.pet)
  end


  private

  def comment_params
    params.require(:comment).permit(:user_id, :pet_id, :text)
  end

  def require_login
   return head(:forbidden) unless session.include? :user_id
  end


end
