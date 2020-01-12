Rails.application.routes.draw do
  
  resources :songwriter_editorials
  devise_for :users, path: '', path_names: { sign_in: "admin", sign_out: "logout"}
  resources :users
  resources :artists do
    resources :editorials
  end
  resources :songwriters do
    resources :songwriter_editorials
  end
  resources :catalogues do 
    resources :cat_editorials
  end
  resources :homes
  resources :abouts

  root 'artists#index'
  get '/about', to: 'simple_pages#about'
  get '/songwriters', to: 'songwriters#index'
  get '/catalogue', to: 'catalogues#index'
  get "/sign_up" => redirect('/')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
