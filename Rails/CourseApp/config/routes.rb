Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'courses/new' => 'courses#new'
    get'courses/:id' => 'courses#show'
	get'courses' => 'courses#index'
	post 'courses/new' => 'courses#create'
	get 'courses/:id/delete' => 'courses#destroy'
end
