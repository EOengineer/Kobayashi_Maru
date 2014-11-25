class Public::SizesController < ApplicationController


  def index
    @sizes = Size.all
  end

  def show
    @size = Size.find(params[:id])
  end


  private

  def size_params
    params.require(:size).permit(:number)
  end
end
