class BookingsController < ApplicationController

before_action :set_booking, only:[:show, :destroy, :edit, :update]

def index
  @bookings = policy_scope(Booking).order(created_at: :desc)
  @my_toilets_bookings = current_user.my_toilets_bookings
end

def show
  @toilet = @booking.toilet
  authorize @booking
end

def create
    @toilet = Toilet.find(params[:toilet_id])
    @booking = Booking.new(booking_params)
    @booking.toilet = @toilet
    @booking.user = current_user
    @booking.status = "Pending host validation..."
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to toilet_path(@toilet)
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    @booking.save
    redirect_to booking_path(@booking)
  end

  def new
    @booking = current_user.bookings.new
    @toilet = Toilet.find(params[:toilet_id])
    authorize @booking
  end

  def destroy
    @booking.destroy
    redirect_to root_path
  end
  
  private

  def booking_params
    params.require(:booking).permit(:entry_time, :exit_time, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
