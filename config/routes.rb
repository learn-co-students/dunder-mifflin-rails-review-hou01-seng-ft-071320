Rails.application.routes.draw do
  resources :dogs
  resources :employees
  get 'dogs_sorted', to: "dogs#index_sorted"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
