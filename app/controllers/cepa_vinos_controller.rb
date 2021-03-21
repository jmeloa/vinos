class CepaVinosController < ApplicationController
  before_action :set_cepa_vino, only: %i[ show edit update destroy ]

  # GET /cepa_vinos or /cepa_vinos.json
  def index
    @cepa_vinos = CepaVino.all
  end

  # GET /cepa_vinos/1 or /cepa_vinos/1.json
  def show
  end

  # GET /cepa_vinos/new
  def new
    @cepa_vino = CepaVino.new
  end

  # GET /cepa_vinos/1/edit
  def edit
  end

  # POST /cepa_vinos or /cepa_vinos.json
  def create
    @cepa_vino = CepaVino.new(cepa_vino_params)

    respond_to do |format|
      if @cepa_vino.save
        format.html { redirect_to @cepa_vino, notice: "Cepa vino was successfully created." }
        format.json { render :show, status: :created, location: @cepa_vino }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cepa_vino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cepa_vinos/1 or /cepa_vinos/1.json
  def update
    respond_to do |format|
      if @cepa_vino.update(cepa_vino_params)
        format.html { redirect_to @cepa_vino, notice: "Cepa vino was successfully updated." }
        format.json { render :show, status: :ok, location: @cepa_vino }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cepa_vino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cepa_vinos/1 or /cepa_vinos/1.json
  def destroy
    @cepa_vino.destroy
    respond_to do |format|
      format.html { redirect_to cepa_vinos_url, notice: "Cepa vino was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cepa_vino
      @cepa_vino = CepaVino.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cepa_vino_params
      params.fetch(:cepa_vino, {})
    end
end
