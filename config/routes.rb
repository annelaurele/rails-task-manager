Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read ALL
  get 'tasks', to: 'tasks#index'
  # Read ONE
  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Create

  post 'tasks', to: 'tasks#create'
  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # Delete
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end
