require 'sidekiq/web'

GuestBook::Application.routes.draw do

  mount Sidekiq::Web => '/sidekiq'
  mount Api::Mobile::Root => '/'

  devise_for :users
  resources :reviews
  get '/about' => 'static_pages#about'
  root 'static_pages#home'
end
