class ToiletsController < ApplicationController
before_action :set_toilet, only:[:show, :destroy]
def index
    @toilets = Toilet.all
    @toilets = policy_scope(Toilet).order(created_at: :desc)
  end

  def show
  end

  def new
    @toilet = current_user.toilets.new
    authorize @toilet
  end

  def create

    @toilet = current_user.toilets.new(toilet_params)
    authorize @toilet
    if @toilet.save
      redirect_to toilets_path(@toilet)
    else
      render 'new'
    end
  end

  def destroy
    @toilet.destroy
    redirect_to toilets_path
  end

  private

  def toilet_params
    params.require(:toilet).permit(:name, :address, :description, :price)

  end

  def set_toilet
    @toilet = Toilet.find(params[:id])
    authorize @toilet
  end
end
