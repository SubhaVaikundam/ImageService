class ImageservicesController < ApplicationController
  before_action :set_imageservice, only: [:show, :update, :destroy]

  # GET /imageservices
  def index
    @imageservices = Imageservice.all

    render json: @imageservices
  end

  # GET /imageservices/1
  def show
    render json: @imageservice
  end

  # POST /imageservices
  def create
    @imageservice = Imageservice.new(imageservice_params)

    if @imageservice.save
      render json: @imageservice, status: :created, location: @imageservice
    else
      render json: @imageservice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /imageservices/1
  def update
    if @imageservice.update(imageservice_params)
      render json: @imageservice
    else
      render json: @imageservice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /imageservices/1
  def destroy
    @imageservice.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imageservice
      @imageservice = Imageservice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def imageservice_params
      params.require(:imageservice).permit(:catentry_id, :name, :make, :sku, :category, :sub_category, :pricing, :details)
    end
end
