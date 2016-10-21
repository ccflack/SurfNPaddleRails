Rails.application.routes.draw do
  root 'posts#newest'
  get '/post/:id' => 'posts#show', as: :post
  get '/about/' => 'about#show', as: :about
  get '/search/' => 'search#show', as: :search
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
