class Public::StudiesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :new]
  before_action :admin_authenticate, only: :admin


  def index
    @studies = Study.all

    respond_to do |format|
      format.html
      format.json {render json: @studies, root: false}
    end
  end

  def show
    @study = Study.find(params[:id])

    respond_to do |format|
      format.html
      format.json {render json: @study}
    end
  end


  def admin
  end

  protected
  def study_params
    params.require(:study).permit(:title, :summary, :cancer_subtype_id, :status_id, :duration_id, :size_id, :state_id, :user_id)
  end

  def default_serializer_options
    {
      root: false
    }
  end
end
