class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def new
  end

  def create
    Shelter.create!(shelter_par)
    redirect_to "/shelters"
  end

  def edit
    @shelter = Shelter.find(params[:id])
  end

  def update
    shelter = Shelter.find(params[:id])
    shelter.update(shelter_par)

    redirect_to "/shelters/#{shelter.id}"
  end

  def destroy
    Shelter.destroy(params[:id])

    redirect_to '/shelters'
  end


  def shelter_par
    param = params.permit(:name, :addres, :city, :state, :zip)
    param
  end
end
