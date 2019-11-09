class MenuController < ApplicationController

  # Service que recebe a temperatura do endpoint
  # e calcula a melhor cerveja e a retorna com JSON
  def by_temperature
    byebug
    given_temperature = beer_by_temperature_params[:temperature].to_i
    given_temperature = 1
    @best_beer = MenuService.new(given_temperature).calculates_best_beer_by_temperature
    render json: @best_beer.to_json
  end

  private
    def beer_by_temperature_params
      params.require(:menu).permit(:temperature)
    end

end