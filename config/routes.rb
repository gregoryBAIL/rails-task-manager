Rails.application.routes.draw do
  # get 'tasks/index'
  # get 'tasks/create'
  # get 'tasks/new'
  # get 'tasks/destroy'
  # get 'tasks/update'
  # get 'tasks/edit'
  # get 'tasks/show'
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
