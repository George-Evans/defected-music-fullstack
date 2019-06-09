Rails.application.routes.draw do
  resources :artists do
    resources :editorials
  end
  resources :homes
  resources :abouts

  root 'artists#index'
  get '/about', to: 'simple_pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
