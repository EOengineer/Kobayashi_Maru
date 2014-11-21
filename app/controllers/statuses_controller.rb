class StatusesController < ApplicationController

  def index
    @statuses = Status.all
  end


  def show
    @status = Status.find(params[:id])
  end


  def status_params
    params.require(:status).permit(:name)
  end
end
