Rails.application.routes.draw do
  root to: 'pets#index'
  resources :pets do
    collection do
      get :adoption
    end
  end
end
