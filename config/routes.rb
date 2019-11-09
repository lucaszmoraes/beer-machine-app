Rails.application.routes.draw do
  
  # VERB                # PATH                                      # CONTROLLER#METHOD
  # Routes de Menu  
  root to: 'menu#index'
  get                   '/menu/por-temperatura',                    to: "menu#by_temperature"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
