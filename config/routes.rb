Rails.application.routes.draw do
  root "home#index"
  get "/api/hello", to: "api#hello"
end