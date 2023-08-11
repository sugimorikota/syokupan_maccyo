Rails.application.routes.draw do
  root 'images#top'
  resources :images, only: [:index, :show] do
    get :random, on: :collection
  end
  get 'accident', to: 'images#accident'
end
