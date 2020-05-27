class MyToiletsController < ApplicationController

  def index
    @toilets = current_user.toilets
    render "toilets/index"
  end
end
