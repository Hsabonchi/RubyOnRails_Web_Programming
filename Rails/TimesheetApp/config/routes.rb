Rails.application.routes.draw do
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get  'employees/home'
get 'employees/wellcome'
root 'employees#hello'
get 'employees/:id/edit' => 'employees#edit'
post 'employees/:id/edit' => 'employees#update'
post 'employees/find' => 'employees#find'
end
