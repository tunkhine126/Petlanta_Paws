class PetsController < ApplicationController
  before_action :require_login


  def index
    if !params[:search]
      @pets ||= Pet.all
    else
      @pets ||= Pet.category_arr(params[:search])
      @pets ||= Pet.all
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render :edit
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end


  def danceparty
    @user = User.find_by(id: session[:user_id])
  end







 private

   def pet_params
     params.require(:pet).permit(:name, :nick_name, :category, :breed, :gender, :age, :color, :img_url)
   end

   def require_login
    return head(:forbidden) unless session.include? :user_id
   end

end
