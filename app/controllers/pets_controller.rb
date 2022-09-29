class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.where(owner: nil)
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to root_path, notice: 'Add sucess!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render :edit
    end
  end

  def destroy
    @pet.destroy
    redirect_to root_path
  end

  def adoption
    @pets = Pet.where.not(owner: nil)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :category, :birth, :adopted, :owner, :adoption_time, :photo)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
