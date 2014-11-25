class Public::DurationsController < ApplicationController

  def index
    @durations = Duration.all
  end


  def show
    @duration = Duration.find(params[:id])
  end


  private

  def duration_params
    params.require(:duration).permit(:length)
  end
end
