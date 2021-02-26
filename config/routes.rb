Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'tasks', to: 'tasks#index'
  # post 'tasks', to: 'tasks#create'
  # get 'tasks/new', to: 'tasks#new', as: :new_task
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'

  resources :cocktails, as: :cocktails do
    resources :doses, only: %i[show index new create destroy], as: :doses
  end
end
