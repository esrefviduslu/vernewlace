class PlacesController < ApplicationController
	respond_to :html, :json
	before_action :authenticate_owner!, except: [:show, :index]
	before_action :set_place, only: [:show, :update, :edit, :destroy]
	before_action :authorize_owner!, only: [:edit, :update, :destroy]

	def new
		@place = Place.new
		@place.build_social_profile
		load_categories
	end

	def index
		@search = Place.search(params[:q])
		@places = @search.result
	end

	def show
		@place = Place.find(params[:id])
	end

	def create 
		@place = current_owner.places.new(place_params)

		if @place.save
			flash[:success] = 'İşlem başarıyla tamamlandı'
			redirect_to place_path(@place)
		else
			load_categories
			render :new
		end
	end

	def edit
		load_categories
	end

	def update
		if @place.update(place_params)
			redirect_to place_path(@place)
		else
			load_categories
			render :edit
		end
	end

	def destroy
		@place.destroy
		redirect_to places_path
	end

	private

	def authorize_owner!
		redirect_to root_path, notice: "Not authorized" unless @place.owner_id == current_owner.id
	end

	def load_categories
		@categories = Category.all.collect {|c| [c.name, c.id]}
	end

	def set_place
		@place = Place.find(params[:id])
	end

	def place_params
		params.require(:place).permit(
			:name, :address, :phone_number, :contact_mail, 
			:established_at, :description, :category_id,
			social_profile_attributes: [:id, :facebook, :twitter, :instagram, :foursquare]
			)
	end
	
end
