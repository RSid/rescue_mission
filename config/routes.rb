Rails.application.routes.draw do
  resources :questions, only: [:index, :show, :create, :new]
  resources :questions do
    resources :answers, only: [:create, :new]
  end
end
