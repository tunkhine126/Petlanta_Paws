class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

    def show
      @user = User.find(params[:id])
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to login_path
      else
        render :new
      end
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to user_path(@user)
      else
        render :edit
      end
    end

    def destroy
      @user = User.find(session[:user_id])
      @user.destroy
      redirect_to '/login'
    end

    private


    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

 end
