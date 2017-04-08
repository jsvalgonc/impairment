class MonthsController < ApplicationController
  before_action :set_month, only: [:show, :edit, :update, :destroy, :import]

  # GET /months
  # GET /months.json
  def index
    #@months = Month.all
    @months = Month.where(company_id: session[:company_id])
    @company = Company.find(session[:company_id])
  end

  # GET /months/1
  # GET /months/1.json
  def show
  end

  # GET /months/new
  def new
    @month = Month.new
  end

  # GET /months/1/edit
  def edit
  end

  # POST /months
  # POST /months.json
  def create
    @month = Month.new
    @month.month = Month.getMax + 1.month 
    @month.company_id = session[:company_id]
    @month.import_parties_status=:missing_parties
    @month.import_loans_status=:missing_loans
    @month.import_mitigants_status=:missing_mitigants
    respond_to do |format|
      if @month.save
        format.html { redirect_to months_url, notice: 'Novo Mês Aberto com sucesso.' }
        format.json { render :show, status: :created, location: @month }
      else
        format.html { render :new }
        format.json { render json: @month.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /months/1
  # PATCH/PUT /months/1.json
  def update
    respond_to do |format|
      if @month.update(month_params)
        format.html { redirect_to @month, notice: 'Month was successfully updated.' }
        format.json { render :show, status: :ok, location: @month }
      else
        format.html { render :edit }
        format.json { render json: @month.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /months/1
  # DELETE /months/1.json
  def destroy
    @month.destroy
    respond_to do |format|
      format.html { redirect_to months_url, notice: 'Month was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def import
       if @month.inicio? then
        case params[:type]
        when 'parties'
          Party.import(params[:file])
          if valida_company_month("parties") then 
            redirect_to root_url, notice: "Ficheiros de Contrapartes Importado"
            @month.import_parties_status = :imported_parties
            @month.validar_importacao  
            @month.save
          else
            redirect_to root_url, notice: "Data ou Empresa inválidas"
          end
        when 'contracts'
          Contract.import(params[:file])
          if valida_company_month("contracts") then
            redirect_to root_url, notice: "Ficheiros de Contratos Importado"
            @month.import_loans_status = :imported_loans
            @month.validar_importacao 
            @month.save
          else
            redirect_to root_url, notice: "Data ou Empresa inválidas"
          end
        when 'mitigants'
          Mitigant.import(params[:file])
          if valida_company_month("mitigants") then
            redirect_to root_url, notice: "Ficheiros de Mitigantes Importado"
            @month.import_mitigants_status = :imported_mitigants
            @month.validar_importacao 
            @month.save
          else
            redirect_to root_url, notice: "Data ou Empresa inválidas"
          end
        else        
          redirect_to root_url, notice: "Tipo de ficheiro não reconhecido"
        end 
        
        #if (@month.import_parties_status = :imported and @month.import_mitigants_status = :imported and @month.import_mitigants_status )
        #  @month.split
        #end
      else
        redirect_to root_url, notice: "Não é possivel importar nesta fase do processo"
      end
  end
  
  def fase
    @month = Month.find(session["month_id"])
    @company = Company.find(session["company_id"])
  end
  
  def proxima_fase 
    @month = Month.find(params[:format])
    case @month.aasm_state
    when 'dados_importados'
      Acontract.aplicar_regras(@month)
      @month.evento_aplic_regras
      @month.save
      redirect_to fase_path, notice: "Fase Alterada" 
    else
      redirect_to fase_path, notice: "Não é possivel alterar estado" 
    end
  end
  
  def import_file
      #Party.import(params[:file])
      #redirect_to root_url, notice: "Ficheiros de Contrapartes Importado"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_month
      @month = Month.find(params[:id])
      @company = Company.find(session["company_id"])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def month_params
      params.require(:month).permit(:month, :status)
    end
    
    def valida_company_month(ficheiro)
      case ficheiro
      when "parties"
        @fich= Party.first
      when "contracts"
        @fich= Contract.first
      when "mitigants"
        @fich = Mitigant.first
      else
        @fich = ""
      end
      @company=Company.find(session["company_id"])
      @month=Month.find(session["month_id"])
      if (@fich.HoldingPartyReference!=@company.CompanyCode) or(@fich.BalanceSheetDate!=@month.month) then
        return false
      else 
        return true
      end
    end
end
