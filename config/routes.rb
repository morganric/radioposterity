Radioposterity::Application.routes.draw do
  resources :feeds, :except => [:get]

  get "category" => "home#category", as: 'tag'
  post "feeds/:id" => "feeds#show", as: "feed_post"

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  get 'admin' => 'home#admin', as: 'admin'

  post "" => "home#index"
  root :to => "home#index"

end