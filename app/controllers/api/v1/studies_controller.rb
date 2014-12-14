class Api::V1::StudiesController < ApplicationController

  def index
    container = []
    class_name = params[:attribute].split('/').last.singularize.classify.constantize
    @resource = class_name.all
    @resource.each { |item| container << item if item.studies[0].present?}

    render json: container
  end

  protected

  def default_serializer_options
    {
      root: false
    }
  end


end
