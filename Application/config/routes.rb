Rails.application.routes.draw do
  #コントローラ名/アクション名
  # GET    'tasks'     => 'tasks#index'
  # GET    'tasks/:id' => 'tasks#show'
  # GET    'tasks/new' => 'tasks#new'
  # POST   'tasks'     => 'tasks#create'
  # GET    'tasks/:id/edit' => 'tasks#edit'
  # DELETE 'tasks/:id' => 'tasks#destroy'
  # PUT    'tasks/:id' => 'tasks#update'
  resources :tasks
  # rootに対してindexアクションを呼び出すように設定
  root :to => "tasks#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
