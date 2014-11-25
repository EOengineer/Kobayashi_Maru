class Public::CancerSubtypesController < ApplicationController

  def index
    @cancer_subtypes = CancerSubtype.all
  end


  def show
    @cancer_subtype = CancerSubtype.find(params[:id])
  end


  private

  def cancer_subtype_params
    params.require(:cancer_subtype).permit(:name)
  end
end
