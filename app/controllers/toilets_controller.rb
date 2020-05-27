class ToiletsController < ApplicationController
before_action :set_toilet, only:[:show, :destroy, :edit, :update]
  def index
    @toilets = Toilet.all.order(created_at: :desc)
    #@toilets = policy_scope(Toilet)
  end

  def show
    authorize @toilet
    @booking = Booking.new
  end

  def new
    @toilet = current_user.toilets.new
    authorize @toilet
  end

  def edit
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.user = current_user
    authorize @toilet
    if @toilet.save!
      redirect_to toilet_path(@toilet)
    else
      render 'new'
    end
  end

  def update
    @toilet.update(toilet_params)
    redirect_to toilets_path(@toilet)
  end

  def destroy
    @toilet.destroy
    redirect_to toilets_path
  end

  def manage
    @toilet.update(toilet_params)
    redirect_to toilets_path(@toilet)
  end

  private

  def toilet_params
    params.require(:toilet).permit(:name, :address, :description, :price, :photo)
  end

  def set_toilet
    @toilet = Toilet.find(params[:id])
    authorize @toilet
  end

end
