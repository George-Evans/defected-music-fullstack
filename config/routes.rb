Rails.application.routes.draw do
  resources :homes
  resources :abouts
  get '/about', to: 'simple_pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
