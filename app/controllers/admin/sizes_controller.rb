class Admin::SizesController < ApplicationController
  before_action :admin_authenticate

  def index
    @sizes = Size.all
  end

  def new
    @size = Size.new
  end

  def create
    @size = Size.new(size_params)
    if @size.save
      redirect_to admin_size_path(@size)
    else
      render 'new'
    end
  end

  def show
    @size = Size.find(params[:id])
  end

  def update
    @size = Size.find(params[:id])
    if @size.update(size_params)
      redirect_to admin_size_path(@size)
    else
      render 'edit'
    end
  end

  private

  def size_params
    params.require(:size).permit(:number)
  end
end
