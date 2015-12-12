class AcademiaTreinamentosController < ApplicationController
  before_action :set_academia_treinamento, only: [:show, :edit, :update, :destroy]

  # GET /academia_treinamentos
  # GET /academia_treinamentos.json
  def index
    @academia_treinamentos = AcademiaTreinamento.all
  end

  # GET /academia_treinamentos/1
  # GET /academia_treinamentos/1.json
  def show
  end

  # GET /academia_treinamentos/new
  def new
    @academia_treinamento = AcademiaTreinamento.new
  end

  # GET /academia_treinamentos/1/edit
  def edit
  end

  # POST /academia_treinamentos
  # POST /academia_treinamentos.json
  def create
    @academia_treinamento = AcademiaTreinamento.new(academia_treinamento_params)

    respond_to do |format|
      if @academia_treinamento.save
        format.html { redirect_to @academia_treinamento, notice: 'Academia treinamento was successfully created.' }
        format.json { render :show, status: :created, location: @academia_treinamento }
      else
        format.html { render :new }
        format.json { render json: @academia_treinamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /academia_treinamentos/1
  # PATCH/PUT /academia_treinamentos/1.json
  def update
    respond_to do |format|
      if @academia_treinamento.update(academia_treinamento_params)
        format.html { redirect_to @academia_treinamento, notice: 'Academia treinamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @academia_treinamento }
      else
        format.html { render :edit }
        format.json { render json: @academia_treinamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /academia_treinamentos/1
  # DELETE /academia_treinamentos/1.json
  def destroy
    @academia_treinamento.destroy
    respond_to do |format|
      format.html { redirect_to academia_treinamentos_url, notice: 'Academia treinamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_academia_treinamento
      @academia_treinamento = AcademiaTreinamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def academia_treinamento_params
      params.require(:academia_treinamento).permit(:nome, :endereco, :modalidade_id)
    end
end
