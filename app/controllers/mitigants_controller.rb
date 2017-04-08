class MitigantsController < ApplicationController
  before_action :set_mitigant, only: [:show, :edit, :update, :destroy]

  # GET /mitigants
  # GET /mitigants.json
  def index
    @mitigants = Mitigant.all
  end

  # GET /mitigants/1
  # GET /mitigants/1.json
  def show
  end

  # GET /mitigants/new
  def new
    @mitigant = Mitigant.new
  end

  # GET /mitigants/1/edit
  def edit
  end

  # POST /mitigants
  # POST /mitigants.json
  def create
    @mitigant = Mitigant.new(mitigant_params)

    respond_to do |format|
      if @mitigant.save
        format.html { redirect_to @mitigant, notice: 'Mitigant was successfully created.' }
        format.json { render :show, status: :created, location: @mitigant }
      else
        format.html { render :new }
        format.json { render json: @mitigant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mitigants/1
  # PATCH/PUT /mitigants/1.json
  def update
    respond_to do |format|
      if @mitigant.update(mitigant_params)
        format.html { redirect_to @mitigant, notice: 'Mitigant was successfully updated.' }
        format.json { render :show, status: :ok, location: @mitigant }
      else
        format.html { render :edit }
        format.json { render json: @mitigant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mitigants/1
  # DELETE /mitigants/1.json
  def destroy
    @mitigant.destroy
    respond_to do |format|
      format.html { redirect_to mitigants_url, notice: 'Mitigant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mitigant
      @mitigant = Mitigant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mitigant_params
      params.require(:mitigant).permit(:BalanceSheetDate, :HoldingPartyReference, :ContractReference, :MitigantReference, :MitigantBalance, :MitigantType, :Componente)
    end
end
