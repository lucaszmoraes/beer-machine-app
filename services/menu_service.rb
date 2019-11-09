class MenuService
  attr_reader :given_temperature # necessário pois não há este campo na tabela, ou sequer uma tabela Beers Menu

  # inicializador
  def initialize(given_temperature)
    @given_temperature = given_temperature
  end

  def calculates_best_beer_by_temperature
    # retorna o ID da melhor cerveja calculada
    @best_beer = "SKOL"
    return @best_beer
  end

end