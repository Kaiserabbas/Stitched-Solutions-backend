class FashionDesignsController < ApplicationController
  before_action :set_fashion_design, only: %i[ show update destroy ]

  # GET /fashion_designs
  def index
    @fashion_designs = FashionDesign.all

    render json: @fashion_designs
  end

  # GET /fashion_designs/1
  def show
    render json: @fashion_design
  end

  # POST /fashion_designs
  def create
    @fashion_design = FashionDesign.new(fashion_design_params)

    if @fashion_design.save
      render json: @fashion_design, status: :created, location: @fashion_design
    else
      render json: @fashion_design.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fashion_designs/1
  def update
    if @fashion_design.update(fashion_design_params)
      render json: @fashion_design
    else
      render json: @fashion_design.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fashion_designs/1
  def destroy
    @fashion_design.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fashion_design
      @fashion_design = FashionDesign.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fashion_design_params
      params.require(:fashion_design).permit(:title, :price, :description, :image_url)
    end
end
