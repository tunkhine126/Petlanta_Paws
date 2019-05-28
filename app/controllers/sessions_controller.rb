class SessionsController < ApplicationController

   def new
   end

   def create
     @user = User.find_by()
     byebug
   end


end
