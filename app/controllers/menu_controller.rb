class MenuController < ApplicationController

  def index

  end

  def form_for_beer_by_temperature

  end

  def result_of_beer_by_temperature
    @given_temperature = beer_by_temperature_params.to_i
    @best_beer = MenuService.new(@given_temperature).calculates_best_beer_by_temperature
    #render json: @best_beer
  end

  private
    def beer_by_temperature_params
      params[:temperature]
    end

end