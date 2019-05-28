class SessionsController < ApplicationController

   def new
   end

   def create
     @user = User.find_by(user: params[:username])
     byebug
   end


end
