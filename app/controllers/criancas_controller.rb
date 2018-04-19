class CriancasController < ApplicationController
  before_action :set_crianca, only: [:show, :edit, :update, :destroy]

  # GET /criancas
  # GET /criancas.json
  def index
    @criancas = Crianca.all
  end

  # GET /criancas/1
  # GET /criancas/1.json
  def show
  end

  # GET /criancas/new
  def new
    @crianca = Crianca.new
  end

  # GET /criancas/1/edit
  def edit
  end

  # POST /criancas
  # POST /criancas.json
  def create
    @crianca = Crianca.new(crianca_params)

    respond_to do |format|
      if @crianca.save
        format.html { redirect_to @crianca, notice: 'Crianca was successfully created.' }
        format.json { render :show, status: :created, location: @crianca }
      else
        format.html { render :new }
        format.json { render json: @crianca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /criancas/1
  # PATCH/PUT /criancas/1.json
  def update
    respond_to do |format|
      if @crianca.update(crianca_params)
        format.html { redirect_to @crianca, notice: 'Crianca was successfully updated.' }
        format.json { render :show, status: :ok, location: @crianca }
      else
        format.html { render :edit }
        format.json { render json: @crianca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criancas/1
  # DELETE /criancas/1.json
  def destroy
    @crianca.destroy
    respond_to do |format|
      format.html { redirect_to criancas_url, notice: 'Crianca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crianca
      @crianca = Crianca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crianca_params
      params.require(:crianca).permit(:Nome, :Pai, :Mae, :Responavel, :Nascimento, :Turma, :Endereco, :Telefone, :Roupa, :Calcado, :Saude, :Medicamento)
    end
end
