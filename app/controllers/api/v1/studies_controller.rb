class Api::V1::StudiesController < ApplicationController

  def index
    @sorted_studies = []
    if params[:group]
      class_name = params[:group].split('/').last.singularize.classify.constantize
      @resource = class_name.all
      @resource.each { |item| @sorted_studies << item if item.studies[0].present?}
    else
      @sorted_studies = Study.all
    end
    render json: @sorted_studies
  end

  def show
    render json: @study = Study.find(params[:id])
  end


  protected

  def default_serializer_options
    {
      root: false
    }
  end


end
