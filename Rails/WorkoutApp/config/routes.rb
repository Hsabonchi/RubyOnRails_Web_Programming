Rails.application.routes.draw do
  resources :client_workouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    post 'client_workouts/find'=>'client_workouts#find'
end
