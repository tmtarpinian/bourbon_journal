class BourbonsController < ApplicationController
  before_action :set_bourbon, only: [:show, :update, :destroy]

  # GET /bourbons
  def index
    bourbons = Bourbon.all

    render json: bourbons
  end

  # GET /bourbons/1
  def show
    render json: bourbon
  end

  # POST /bourbons
  def create
    @bourbon = Bourbon.new(bourbon_params)

    if @bourbon.save
      render json: @bourbon, status: :created, location: @bourbon
    else
      render json: @bourbon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bourbons/1
  def update
    if @bourbon.update(bourbon_params)
      render json: @bourbon
    else
      render json: @bourbon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bourbons/1
  def destroy
    @bourbon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bourbon
      @bourbon = Bourbon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bourbon_params
      params.require(:bourbon).permit(:name, :distillery, :proof, :aged, :flavornotes, :pairing, :category_id)
    end
end
