Rails.application.routes.draw do
  
  # VERB          # PATH          # CONTROLLER#METHOD
  # Routes de Menu  
  root to: 'menu#index'
  get         '/menu/cerveja-por-temperatura',                  to: "menu#form_for_beer_by_temperature"
  post         '/menu/cerveja-por-temperatura',                  to: "menu#form_for_beer_by_temperature"
  post         '/menu/resultado/cerveja-por-temperatura',        to: "menu#result_of_beer_by_temperature"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
