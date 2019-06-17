Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: "admin", sign_out: "logout"}
  resources :users
  resources :artists do
    resources :editorials
  end
  resources :homes
  resources :abouts

  root 'artists#index'
  get '/about', to: 'simple_pages#about'
  # get "/sign_up" => redirect('/')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
