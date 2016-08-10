class PlacesController < ApplicationController
	def index
		@places = Place.all.order(:id)
	end

	def show
		@places = Place.find(params[:id])
	end

		
end
