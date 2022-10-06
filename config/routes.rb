Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  root "articles#index"
  

  resources :articles do 
    post :article_creation, on: :collection
    put :article_updation
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
    post :account_creation, on: :collection
    resources :account_histories
  end
  post "authors/:author_id/books", to: "authors#book_creation_by_author"

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

  resources :authors do 
    get :author_show
    delete :author_destroy
    get :author_books
  end


end
