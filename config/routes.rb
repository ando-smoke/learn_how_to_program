Rails.application.routes.draw do
  root :to => 'lessons#index'

  resources :lessons do
    resources :sections, except: [:show, :index]
  end
end
