class StudiesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :new]
  before_action :admin_authenticate, only: :admin


  def new
    @study = Study.new
  end

  def create
    @study = Study.new(study_params)
    if @study.save
      redirect_to study_path(@study)
    else
      render 'new'
    end
  end

  def show
    @study = Study.find(params[:id])
  end

  def index
    @studies = Study.all
  end

  def update
    @study = Study.find(params[:id])
    if @study.update(study_params)
      redirect_to study_path(@study)
    else
      render 'edit'
    end
  end

  def admin
  end

  protected
  def study_params
    params.require(:study).permit(:title, :summary, :cancer_subtype_id, :status_id, :duration_id, :size_id, :state_id)
  end
end
