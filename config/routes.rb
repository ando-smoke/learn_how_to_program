Rails.application.routes.draw do
  root :to => 'lessons#index'

  resources :lessons do
    resources :sections, except: [:index] do
      resources :topics, except: [:index]
    end
  end
end
