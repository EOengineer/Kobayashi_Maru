class Admin::StatusesController < ApplicationController
  before_action :admin_authenticate

  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to admin_status_path(@status)
    else
      render 'new'
    end
  end

  def show
    @status = Status.find(params[:id])
  end

  def update
    @status = Status.find(params[:id])
    if @status.update(status_params)
      redirect_to admin_status_path(@status)
    else
      render 'edit'
    end
  end

  def status_params
    params.require(:status).permit(:name)
  end
end
