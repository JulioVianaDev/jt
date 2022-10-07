class Api::ComidasController < ApplicationController
  def index
    @comida = Comida.all 
    render json: @comida
  end

  def show
    @comida = Comida.find(params[:id])
    render json: @comida
  end

  def create
    @comida = Comida.new(comida_params)
    if @comida.save
      render json: @comida 
    else
      render json: {errors: @comida.errors}, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private
    # {comida: {type: "Açai", qtd: 777}}
    def comida_params
      params.require(:comida).permit(:type,:qtd)
    end
end
