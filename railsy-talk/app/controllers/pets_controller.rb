class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def edit
  end

  def create
    @pet = current_user.pets.new(pet_params)
    if @pet.name == ""
      @pet.destroy
    elsif @pet.save
        redirect_to @pet, notice: 'Pet was successfully created.' 
    else
      render :new 
    end
    # else
    #   redirect_to pets_url
    # end
  end

  def update
    if @pet.update(pet_params)
      redirect_to @pet, notice: 'Pet was successfully updated.' 
    else
      render :edit 
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_url, notice: 'Pet was successfully destroyed.'
  end

  private
  
    def set_pet
      @pet = Pet.find(params[:id])
    end

    def pet_params
      params.require(:pet).permit(:user_id, :name, :animal_type, :age, :image)
    end
end
