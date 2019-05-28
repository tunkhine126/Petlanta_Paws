class AdoptionsController < ApplicationController
    
    def index 
        @adoptions = Adoption.all 
      end 
  
      def show
        @adoption = Adoption.find(params[:id]) 
      end 
  
      def new
        @adoption = Adoption.new 
      end 
  
      def create
        @adoption = Adoption.new(adoption_params)
        if @adoption.save 
          redirect_to adoption_path(@adoption)
        else 
          render :new
      end 
  
      # def edit
      #   @adoption = Adoption.find(params[:id]) 
      # end 
  
      # def update
      #   @adoption = Adoption.find(params[:id])
      #   if @adoption.update(adoption_params)
      #     redirect_to adoption_path(@adoption)
      #   else 
      #     render :edit
      #   end 
      # end 
  
      def destroy 
        @adoption = Adoption.find(params[:id])
        @adoption.destroy
        redirect_to pets_path 
      end 
      
      private 
  
      def adoption_params 
        params.require(:adoption).permit(:user_id, :pet_id, :open_or_closed)
      end
    end
end 
