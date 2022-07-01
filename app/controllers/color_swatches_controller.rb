class ColorSwatchesController < ApplicationController
  before_action :set_color_swatch, only: %i[ show edit update destroy ]

  # GET /color_swatches or /color_swatches.json
  def index
    @color_swatches = ColorSwatch.all
  end

  # GET /color_swatches/1 or /color_swatches/1.json
  def show
  end

  # GET /color_swatches/new
  def new
    @color_swatch = ColorSwatch.new
  end

  # GET /color_swatches/1/edit
  def edit
  end

  # POST /color_swatches or /color_swatches.json
  def create
    @color_swatch = ColorSwatch.new(color_swatch_params)

    respond_to do |format|
      if @color_swatch.save
        format.html { redirect_to color_swatch_url(@color_swatch), notice: "Color swatch was successfully created." }
        format.json { render :show, status: :created, location: @color_swatch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @color_swatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /color_swatches/1 or /color_swatches/1.json
  def update
    respond_to do |format|
      if @color_swatch.update(color_swatch_params)
        format.html { redirect_to color_swatch_url(@color_swatch), notice: "Color swatch was successfully updated." }
        format.json { render :show, status: :ok, location: @color_swatch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @color_swatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /color_swatches/1 or /color_swatches/1.json
  def destroy
    @color_swatch.destroy

    respond_to do |format|
      format.html { redirect_to color_swatches_url, notice: "Color swatch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color_swatch
      @color_swatch = ColorSwatch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def color_swatch_params
      params.require(:color_swatch).permit(:idFormula, :idUser, :colorName, :colorHexa)
    end
end
