class Admin::DurationsController < ApplicationController
  before_action :admin_authenticate

  def index
    @durations = Duration.all
  end

  def new
    @duration = Duration.new
  end

  def create
    @duration = Duration.new(duration_params)
    if @duration.save
      redirect_to admin_durations_path(@duration)
    else
      render 'new'
    end
  end

  def show
    @duration = Duration.find(params[:id])
  end

  def update
    @duration.find(params[:id])
    if @duration.update(duration_params)
      redirect_to admin_durations_path(@duration)
    else
      render 'edit'
    end
  end

  private

  def duration_params
    params.require(:duration).permit(:length)
  end
end
