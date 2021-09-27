Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "employees#index"
  
  # get "/employees", to: "employees#index"
  # get "/employees/:id", to: "employees#show"
  resources :employees

end
