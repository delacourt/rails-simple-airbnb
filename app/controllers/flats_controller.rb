class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :destroy, :edit, :update]
  def index
    @flats = Flat.all
  end

  def show
  end

  def destroy
    @flat.destroy

    redirect_to flats_path
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
  end

  def edit
  end

  def update
    @flat.update(flat_params)

    redirect_to flat_path(@flat)
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end