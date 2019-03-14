Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "Login", sign_out: "Log Out"}
  resources :bills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'bills#index'
  
end
