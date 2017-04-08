class RulesiisController < ApplicationController
  before_action :set_rulesii, only: [:show, :edit, :update, :destroy, :validar]

  # GET /rulesiis
  # GET /rulesiis.json
  def index
    @company = Company.find(session[:company_id])
    @rulesiis = Rulesii.where(company_id: @company.id).order("priority DESC")
  end

  # GET /rulesiis/1
  # GET /rulesiis/1.json
  def show
  end

  # GET /rulesiis/new
  def new
    @rulesii = Rulesii.new
    @company = Company.find(session[:company_id])
    @rulesii.company_id = @company.id
  end

  # GET /rulesiis/1/edit
  def edit
  end

  # POST /rulesiis
  # POST /rulesiis.json
  def create
    @rulesii = Rulesii.new(rulesii_params)

    respond_to do |format|
      if @rulesii.save
        format.html { redirect_to @rulesii, notice: 'Regra Criada com Sucesso' }
        format.json { render :show, status: :created, location: @rulesii }
      else
        format.html { render :new }
        format.json { render json: @rulesii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rulesiis/1
  # PATCH/PUT /rulesiis/1.json
  def update
    respond_to do |format|
      if @rulesii.update(rulesii_params)
        format.html { redirect_to @rulesii, notice: 'Rulesii was successfully updated.' }
        format.json { render :show, status: :ok, location: @rulesii }
      else
        format.html { render :edit }
        format.json { render json: @rulesii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rulesiis/1
  # DELETE /rulesiis/1.json
  def destroy
    @rulesii.destroy
    respond_to do |format|
      format.html { redirect_to rulesiis_url, notice: 'Rulesii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def validar
    begin
      sqlStatment = "select * from \"acontracts\" where " + @rulesii.rule
      teste=Contract.connection.select_all(sqlStatment)
      flash[:notice] = "A Regra n.º" + @rulesii.number.to_int.to_s + " é válida"
      render js: "window.location='#{rulesiis_path(@rulesiis)}'"
      return true
    rescue
      flash[:notice] = "A Regra n.º" + @rulesii.number.to_int.to_s + " não é válida"
      render js: "window.location='#{rulesiis_path(@rulesiis)}'"
      return false
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rulesii
      @rulesii = Rulesii.find(params[:id])
      @company = Company.find(session[:company_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rulesii_params
      params.require(:rulesii).permit(:number, :priority, :RuleType, :rule, :company_id)
    end
end
