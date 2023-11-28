Rails.application.routes.draw do
  resources :tasks, except: %i[new edit] do
    collection do
      get 'completed', to: 'tasks#completed', as: 'completed_tasks'
      get 'incomplete', to: 'tasks#incomplete', as: 'incomplete_tasks'
    end
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
    # Can be used by load balancers and uptime monitors to verify that the app is live.
    get 'up' => 'rails/health#show', as: :rails_health_check

    # Defines the root path route ("/")
  end

  root 'tasks#index'
end
