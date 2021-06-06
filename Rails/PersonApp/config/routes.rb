Rails.application.routes.draw do
   # for details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'persons/new' => 'persons#new'
  get 'persons/:id' => 'persons#show'
  get 'persons' => 'persons#index'
  post 'persons/new' => 'persons#create'
  get 'persons/:id/delete' => 'persons#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
