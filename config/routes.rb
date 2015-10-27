Rails.application.routes.draw do
  get    "/login"  => "sessions#new"
  post   "/login"  => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get  "/sign_up" => "registrations#new"
  post "/sign_up" => "registrations#create"

  root to: "pages#home"
end
