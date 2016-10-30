Rails.application.routes.draw do
  resources :garden_layouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   post 'authenticate', to: 'authentication#authenticate'
end
