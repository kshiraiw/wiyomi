Wiyomi::Application.routes.draw do
  root to: 'root#index'
  get 'savethedate', to: 'root#savethedate'
  resources :responses, only: [:index, :create]
end
