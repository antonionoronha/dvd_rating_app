Rails.application.routes.draw do
  resources :films
  root to: "films#index"
  get "search", :to => "films#index"
end
