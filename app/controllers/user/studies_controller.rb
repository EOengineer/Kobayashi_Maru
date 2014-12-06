class User::StudiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_studies = Study.where(user_id: current_user.id)

    render json: @user_studies
  end

  def new
    @study = Study.new
  end

  def create
    @study = Study.new(study_params)
    @study.user = current_user

    if @study.save
      redirect_to user_study_path(@study)
    else
      render 'new'
    end
  end

  def show
    @user_study = Study.find(params[:id])
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
    params.require(:study).permit(:title, :summary, :cancer_subtype_id, :status_id, :duration_id, :size_id, :state_id, :user_id)
  end

end
