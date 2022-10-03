Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  root "articles#index"
  

  resources :articles do 
    resources :comments
  end

  # root "demos#index"

  resources :demos
  # post “/persons”, to: “persons#new”

  #root "suppliers#index"

  resources :suppliers
  resources :accounts
  resources :account_histories

  resources :accounts do 
    resources :account_histories
  end

  #root "assemblies#index"

  resources :assemblies
  resources :parts

  # post "create_assembly_parts", to: "assemblies#create_assembly_parts"

  resources :employees do 
    resources :pictures
  end

  resources :products do 
    resources :pictures
  end

  resources :products


end
