class AdoptionsController < ApplicationController
    
    def index 
      @adoptions = Adoption.all 
    end 
  
    def show
      @adoption = Adoption.find(params[:id]) 
    end 
  
    def new
      @adoption = Adoption.new 
      find_user
      # byebug
    end 
  
    def create

      @adoption = Adoption.new(adoption_params)
      find_user
      @adoption.user_id = @user.id
        if @adoption.save 
          redirect_to adoption_path(@adoption)
        else 
          render :new
        end 
    end
    
    def destroy 
      @adoption = Adoption.find(params[:id])
      @adoption.destroy
        redirect_to pets_path 
    end 
      
    private 

    def find_user 
      @user = User.find_by(id: session[:user_id])
    end 
  
    def adoption_params 
      params.require(:adoption).permit(:user_id, :pet_id, :open_or_closed)
    end
end 
