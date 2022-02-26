Rails.application.routes.draw do
  get '/', to: "candidates#index"
  resources :candidates do
    post :vote, on: :member
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
