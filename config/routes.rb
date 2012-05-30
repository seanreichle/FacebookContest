FacebookContentest::Application.routes.draw do
  resources :users, :only =>  [:new, :show, :create, :topsix]
  root :to => 'users#new'
  match '/topsix', :to => 'users#topsix'
end