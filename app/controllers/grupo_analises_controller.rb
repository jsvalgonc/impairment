class GrupoAnalisesController < ApplicationController
  before_action :set_grupo_analise, only: [:show, :edit, :update, :destroy]

  # GET /grupo_analises
  # GET /grupo_analises.json
  def index
    @grupo_analises = GrupoAnalise.all
  end

  # GET /grupo_analises/1
  # GET /grupo_analises/1.json
  def show
  end

  # GET /grupo_analises/new
  def new
    @grupo_analise = GrupoAnalise.new
  end

  # GET /grupo_analises/1/edit
  def edit
  end

  # POST /grupo_analises
  # POST /grupo_analises.json
  def create
    @grupo_analise = GrupoAnalise.new(grupo_analise_params)

    respond_to do |format|
      if @grupo_analise.save
        format.html { redirect_to @grupo_analise, notice: 'Grupo analise was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_analise }
      else
        format.html { render :new }
        format.json { render json: @grupo_analise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_analises/1
  # PATCH/PUT /grupo_analises/1.json
  def update
    respond_to do |format|
      if @grupo_analise.update(grupo_analise_params)
        format.html { redirect_to @grupo_analise, notice: 'Grupo analise was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_analise }
      else
        format.html { render :edit }
        format.json { render json: @grupo_analise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_analises/1
  # DELETE /grupo_analises/1.json
  def destroy
    @grupo_analise.destroy
    respond_to do |format|
      format.html { redirect_to grupo_analises_url, notice: 'Grupo analise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_analise
      @grupo_analise = GrupoAnalise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_analise_params
      params.require(:grupo_analise).permit(:title, :description)
    end
end
