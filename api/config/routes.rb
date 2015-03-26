Rails.application.routes.draw do

  resources :events do
    collection do
      post :create
    end
  end
end
