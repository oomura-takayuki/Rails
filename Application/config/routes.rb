Rails.application.routes.draw do
  #コントローラ名/アクション名
  # GET    'tasks'     => 'tasks#index' http://localhost:3000/tasks
  # GET    'tasks/:id' => 'tasks#show'
  # GET    'tasks/new' => 'tasks#new' http://localhost:3000/tasks/new
  # POST   'tasks'     => 'tasks#create'
  # GET    'tasks/:id/edit' => 'tasks#edit' http://localhost:3000/tasks/1/new
  # DELETE 'tasks/:id' => 'tasks#destroy'
  # PUT    'tasks/:id' => 'tasks#update'
  resources :tasks
  # rootに対してはindexアクションを呼び出すように設定
  root :to => "tasks#index"
  post "tasks/:id/edit" => "tasks#edit"
  post "/tasks/new" => "tasks#new"
  # delete "task/:id" => "tasks#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
