Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails, except: %i[index] do
    resources :doses, only: %i[index new create]
    collection do
      get 'search'
    end
  end

  resources :doses, only: %i[edit update destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
