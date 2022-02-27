Rails.application.routes.draw do
  #コントローラ名/アクション名
  # GET    'sample'     => 'books#index'http://localhost:3000/tasks
  # GET    'sample/:id' => 'books#show'
  # GET    'sample/new' => 'books#new'http://localhost:3000/tasks/new
  # POST   'sample'     => 'books#create'
  # GET    'sample/:id/edit' => 'books#edit'
  # DELETE 'sample/:id' => 'books#destroy'
  # PUT    'sample/:id' => 'books#update'
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
