class ReservationsController < ApplicationController
	before_action :authenticate_customer!
	before_action :set_place
	before_action :set_reservation, only: [:destroy]
	before_action :authorize_customer!, only: [:destroy]

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
	    redirect_to @place, notice: "Reservation was deleted"
  	end

	private
	def set_reservation
		@reservation = Reservation.find(params[:id])
	end

	def authorize_customer!
  		redirect_to @place, notice: "Not authorized" unless @reservation.customer_id == current_customer.id
	end

	def set_place
		@place = Place.find(params[:place_id])
	end

	def reserv_params
		params.require(:reservation).permit(:date, :number_of_people, :customer_id, :place_id)
	end
end
