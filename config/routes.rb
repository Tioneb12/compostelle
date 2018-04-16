Rails.application.routes.draw do

  devise_for :users
  root to: 'ways#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/pages/:page" => "pages#show"


  resources :ways, only:[:index, :show] do
    resources :tracks, only:[:index, :show]
    resources :pois, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end
end
