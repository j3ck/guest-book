GuestBook::Application.routes.draw do

  resources :reviews
  get '/about' => 'static_pages#about'
  root 'static_pages#home'
end
