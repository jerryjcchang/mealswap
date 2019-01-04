class MealBookingsController < ApplicationController

  def new
    @booking = MealBooking.new
  end

  def create
    # byebug
    @booking = MealBooking.create(meal_id: params['meal_id'], booker_id: params['booker_id'])
    redirect_to user_path(@booking.booker)
  end

  private

  # def booking_params
  #   params.require(:mealbooking).permit(:meal_id, :booker_id, :received)
  # end

end
