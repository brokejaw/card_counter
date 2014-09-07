Solano::Application.routes.draw do
  root to: "site#root"
  get '/weeks', to: 'cards#weekly'
  get '/months', to: 'cards#monthly'
  resources :cards
end
