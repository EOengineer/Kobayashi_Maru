class Admin::StatesController < ApplicationController
  before_action :admin_authenticate

  def index
    @states = State.all
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
    if @state.save
      redirect_to admin_state_path(@state)
    else
      render 'new'
    end
  end

  def show
    @state = State.find(params[:id])
  end

  def update
    @state = State.find(params[:id])
    if @state.update(state_params)
      redirect_to admin_state_path(@state)
    else
      render 'edit'
    end
  end

  private

  def state_params
    params.require(:state).permit(:name)
  end

end
