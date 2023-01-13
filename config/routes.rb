Rails.application.routes.draw do
  get 'searchresults/index'
  get 'searchresults/new'
  get 'searchresults/show'
  get 'searchresults/create'
  get 'searchresults/destroy'
  get 'booktickets/index'
  get 'booktickets/search'
  get 'booktickets/create'
  get 'booktickets/new'
  get 'booktickets/show'
  get 'user/new'
  get 'user/destroy'
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'booktickets/ekmtotvm'
  get 'booktickets/ekmtothr'
  get 'booktickets/thrtoekm'
  get 'booktickets/search_ekmtotvm'
  get 'booktickets/search_ekmtothr'
  get 'booktickets/search_thrtoekm'
  get 'booktickets/search_date_ekmtotvm'
  get 'welcome/search_bus_route'
  get 'booktickets/search_results'
  get '/searchh', to: 'booktickets#new', as: :search

  get 'reservation/passenger_details'
  get 'reservation/payment'
 # get '/search_bustype', to: 'search#search_bustype'

 # require 'sidekiq/web'
 # mount Sidekiq::Web=> '/sidekiq'
end
