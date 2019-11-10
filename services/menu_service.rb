require 'net/http'
require 'uri'

class MenuService
  attr_reader :given_temperature # necessário pois não há este campo na tabela, ou sequer uma tabela Beers Menu

  # inicializador
  def initialize(given_temperature)
    @given_temperature = given_temperature
  end

  def calculates_best_beer_by_temperature
    
    uri = URI.parse("http://localhost:2000/api/v1/beers/menu/melhor-cerveja")
    http = Net::HTTP.new(uri.host, uri.port)
    
    request = Net::HTTP::Post.new(uri.request_uri)
    request.set_form_data({"beer[temperature]" => @given_temperature})
    
    response = http.request(request)
    hash_response = YAML.load(response.body)
    
    @best_beer = hash_response["style"]
    return @best_beer

  end

end
