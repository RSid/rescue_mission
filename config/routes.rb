Rails.application.routes.draw do
  resources :questions
  resources :questions do
    resources :answers, only: [:create, :new, :destroy, :update, :edit]
  end
  match '/auth/:provider/callback', :to => 'sessions#create', :via => [:get, :post]
  resources :users
end
