class MenuController < ApplicationController

  def index

  end

  # Service que recebe a temperatura do endpoint
  # e calcula a melhor cerveja e a retorna com JSON
  def form_for_beer_by_temperature
    #byebug
    #given_temperature = beer_by_temperature_params[:temperature].to_i
    given_temperature = 1
    @best_beer = MenuService.new(given_temperature).calculates_best_beer_by_temperature
    #render json: @best_beer
  end

  def result_of_beer_by_temperature

  end

  private
    def beer_by_temperature_params
      params.require(:menu).permit(:temperature)
    end

end