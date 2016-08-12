class PlacesController < ApplicationController
	
	def new
		@place = Place.new
	end

	def index
		@places = Place.all.order(:id)
	end

	def show
		@places = Place.find(params[:id])
	end

	def create 
		@place = Place.new(place_params)
		
		if @place.save
			redirect_to place_path(@place)
		else
			render :new
		end
	end

	def place_params
		params.permit(:name, :address, :phone_number, :contact_mail)
	end
		
end
