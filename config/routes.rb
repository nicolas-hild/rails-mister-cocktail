Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails, except: %i[index] do
    resources :doses, only: %i[index new create]
  end

  resources :doses, only: %i[edit update delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
