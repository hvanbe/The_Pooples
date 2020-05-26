class BookingsController < ApplicationController

before_action :set_toilet, only:[:update, :show, :destroy]

def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
    @toilet = @booking.toilet
  end

  def new
    @booking = current_user.bookings.new
    authorize @booking
  end

  def create
    @toilet = Toilet.find(params[:toilet_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      redirect_to toilet_path(@toilet)
    end
  end

  def edit
  end

  def update
    @booking.save!
    redirect_to booking_path(@booking)
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
    authorize @booking
  end
end

end
