class Public::StatesController < ApplicationController

  def index
    @states = State.all
  end


  def show
    @state = State.find(params[:id])
  end


  private

  def state_params
    params.require(:state).permit(:name)
  end

end
