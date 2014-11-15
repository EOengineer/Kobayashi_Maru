class Admin::CancerSubtypesController < ApplicationController
  before_action :admin_authenticate

  def index
    @cancer_subtypes = CancerSubtype.all
  end

  def new
    @cancer_subtype = CancerSubtype.new
  end

  def create
    @cancer_subtype = CancerSubtype.new(cancer_subtype_params)
    if @cancer_subtype.save
      redirect_to admin_cancer_subtype_path(@cancer_subtype)
    else
      render 'new'
    end
  end

  def show
    @cancer_subtype = CancerSubtype.find(params[:id])
  end

  def update
    @cancer_subtype = CancerSubtype.find(params[:id])
    if @cancer_subtype.update(@cancer_subtype_params)
      redirect_to admin_cancer_subtype_path(@cancer_subtype)
    else
      render 'edit'
    end
  end

  private

  def cancer_subtype_params
    params.require(:cancer_subtype).permit(:name)
  end
end
