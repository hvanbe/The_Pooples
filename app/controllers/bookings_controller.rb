class BookingsController < ApplicationController

before_action :set_booking, only:[:show, :destroy]

def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
    @toilet = @booking.toilet
  end

  def new
    @booking = current_user.bookings.new
    @toilet = Toilet.find(params[:toilet_id])
  end

  def create
    @toilet = Toilet.find(params[:toilet_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      redirect_to toilet_path(@toilet)
    end
  end

  def destroy
    @booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:entry_time, :exit_time)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
