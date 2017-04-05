class AttributesController < ApplicationController
  before_action :set_attribute, only: [:show, :update, :destroy]

  # GET /attributes
  

  # GET /attributes/1
  def show
    render json: @attribute
  end 

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute
      @attribute = Attribute.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attribute_params
      params.require(:attribute).permit(:size, :color)
    end
end
