Rails.application.routes.draw do
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
post 'courses/find' => 'courses#find'
root 'application#hello'



end
