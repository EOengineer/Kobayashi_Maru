class StudiesController < ApplicationController
  #before_action :authenticate_user!, only: [:create, :update, :new]



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

  protected
  def study_params
    params.require(:study).permit(:name, :type, :size, :days_duration)
  end
end
