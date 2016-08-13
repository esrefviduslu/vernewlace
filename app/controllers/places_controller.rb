class PlacesController < ApplicationController
	before_action :set_place, only: [:show, :update, :edit, :destroy]
	
	def new
		@place = Place.new
	end

	def index
		@places = Place.all.order(:id)
	end

	def show
	end

	def create 
		@place = Place.new(place_params)
		if @place.save
			redirect_to place_path(@place)
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @place.update(place_params)
			redirect_to place_path(@place)
		else
			render :edit
		end
	end

	def destroy
		@place.destroy
		redirect_to places_path
	end

	private
	def set_place
		@place = Place.find(params[:id])
	end

	def place_params
		params.require(:place).permit(:name, :address, :phone_number, :contact_mail, :established_at, :description)
	end
		
end
