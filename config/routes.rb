Radioposterity::Application.routes.draw do
  resources :feeds#, :except => [:get]

  get "categories" => "home#categories", as: 'categories'
  get "category" => "home#category", as: 'tag'
  get "feeds/:id" => "feeds#show", as: "feed_get"
  post "feeds/:id" => "feeds#show", as: "feed_post"
  post "/plays" => "feed_plays#create", as: "feed_plays"

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  get 'admin' => 'home#admin', as: 'admin'

  post "" => "home#index"
  root :to => "home#index"

end