Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items, only:[:index, :show, :new, :create] do
  	resource :reviews, only:[:create, :destroy]
  end
end
