class Public::StudiesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :new]
  before_action :admin_authenticate, only: :admin




  def show
    @study = Study.find(params[:id])

    #render json: @study

  end

  def index
    @studies = Study.all

    #render json: @studies

  end


  def admin
  end

  protected
  def study_params
    params.require(:study).permit(:title, :summary, :cancer_subtype_id, :status_id, :duration_id, :size_id, :state_id, :user_id)
  end
end
