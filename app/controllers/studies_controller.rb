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
    params.require(:study).permit(:name, :type, :size, :days_duration)
  end

  def admin_authenticate
    redirect_to root_path unless user_signed_in? && current_user.is_admin?
  end
end
