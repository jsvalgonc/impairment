class ApartiesController < ApplicationController
  before_action :set_aparty, only: [:show, :edit, :update, :destroy]

  # GET /aparties
  # GET /aparties.json
  def index
    @aparties = Aparty.all
  end
  
  def index_AI_AC
    @month = Month.find(session[:month_id])
    @company = Company.find(session[:company_id])
    @aparties = Aparty.where(company_id:  @company.id,  month_id:  @month.id).all
  end

  # GET /aparties/1
  # GET /aparties/1.json
  def show
  end

  # GET /aparties/new
  def new
    @aparty = Aparty.new
  end

  # GET /aparties/1/edit
  def edit
  end

  # POST /aparties
  # POST /aparties.json
  def create
    @aparty = Aparty.new(aparty_params)

    respond_to do |format|
      if @aparty.save
        format.html { redirect_to @aparty, notice: 'Aparty was successfully created.' }
        format.json { render :show, status: :created, location: @aparty }
      else
        format.html { render :new }
        format.json { render json: @aparty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aparties/1
  # PATCH/PUT /aparties/1.json
  def update
    respond_to do |format|
      if @aparty.update(aparty_params)
        format.html { redirect_to @aparty, notice: 'Aparty was successfully updated.' }
        format.json { render :show, status: :ok, location: @aparty }
      else
        format.html { render :edit }
        format.json { render json: @aparty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aparties/1
  # DELETE /aparties/1.json
  def destroy
    @aparty.destroy
    respond_to do |format|
      format.html { redirect_to aparties_url, notice: 'Aparty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aparty
      @aparty = Aparty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aparty_params
      params.require(:aparty).permit(:BalanceSheetDate, :HoldingPartyReference, :PartyReference, :PartyDescription, :NIF, :ActivitySector, :CountryCode, :SectorialCode, :PartyType, :Balcao, :ZipCode, :CodigoVigilanciaEspecial, :PartyGroupReference, :TotalGroupExposure, :TotalPartyExposure, :BPN_OverdueCredit, :BPN_ReturnedCheques, :BPN_OverdueCreditOther, :BPN_BdPDefault, :BPN_OverdueCreditBPNOther, :NPLTeam, :NPLTeamLeader, :AssetManager, :LegalManager)
    end
end
