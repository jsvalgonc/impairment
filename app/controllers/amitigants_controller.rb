class AmitigantsController < ApplicationController
  before_action :set_amitigant, only: [:show, :edit, :update, :destroy]

  # GET /amitigants
  # GET /amitigants.json
  def index
    @amitigants = Amitigant.all
  end

  # GET /amitigants/1
  # GET /amitigants/1.json
  def show
  end

  # GET /amitigants/new
  def new
    @amitigant = Amitigant.new
  end

  # GET /amitigants/1/edit
  def edit
  end

  # POST /amitigants
  # POST /amitigants.json
  def create
    @amitigant = Amitigant.new(amitigant_params)

    respond_to do |format|
      if @amitigant.save
        format.html { redirect_to @amitigant, notice: 'Amitigant was successfully created.' }
        format.json { render :show, status: :created, location: @amitigant }
      else
        format.html { render :new }
        format.json { render json: @amitigant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amitigants/1
  # PATCH/PUT /amitigants/1.json
  def update
    respond_to do |format|
      if @amitigant.update(amitigant_params)
        format.html { redirect_to @amitigant, notice: 'Amitigant was successfully updated.' }
        format.json { render :show, status: :ok, location: @amitigant }
      else
        format.html { render :edit }
        format.json { render json: @amitigant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amitigants/1
  # DELETE /amitigants/1.json
  def destroy
    @amitigant.destroy
    respond_to do |format|
      format.html { redirect_to amitigants_url, notice: 'Amitigant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amitigant
      @amitigant = Amitigant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amitigant_params
      params.require(:amitigant).permit(:BalanceSheetDate, :HoldingPartyReference, :ContractReference, :MitigantReference, :MitigantBalance, :MitigantType, :Componente, :acontract_id)
    end
end
