class ReservationsController < ApplicationController
	before_action :authenticate_customer!
	before_action :set_place

	 def create
	    @reservation = @place.reservations.new(reserv_params) 
	    @reservation.customer = current_customer

	    if @reservation.save
	      redirect_to @place, notice: "Reservation was saved."
	    else
	      redirect_to @place, notice: "Reservation is not valid."
	    end
  	end

  	def destroy
	    @reservation.destroy
	    redirect_to @place, notice: "Comment was deleted"
  	end

	private
	def set_place
		@place = Place.find(params[:place_id])
	end

	def reserv_params
		params.require(:reservation).permit(:date, :number_of_people, :customer_id, :place_id)
	end
end
