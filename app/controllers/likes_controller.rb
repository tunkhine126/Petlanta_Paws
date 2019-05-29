class LikesController < ApplicationController
  before_action :require_login


    def new
      @like = Like.new
    end

    def show
      @like = Like.find(params[:id])
    end

    def create
      @like = Like.new(like_params)
      if @like.save
        redirect_to pet_path(@like.pet)
      else
        "Couldnt Like this pet!"
      end
    end

    def destroy
      @like = Like.find(params[:id])
      @like.destroy
      redirect_to pets_path
    end


    private

    def like_params
      params.require(:like).permit(:user_id, :pet_id)
    end

    def require_login
     return head(:forbidden) unless session.include? :user_id
    end



end
