class Public::StatesController < ApplicationController

  def index
    @states = State.all
# binding.pry
    test = []
      @states.each do |state|
      test << state if state.studies[0].present?
    end
    render json: test
  end


  def show
    @state = State.find(params[:id])
  end


  private

  def state_params
    params.require(:state).permit(:name)
  end

end
