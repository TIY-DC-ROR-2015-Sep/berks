Rails.application.routes.draw do
  get    "/login"  => "sessions#new"
  post   "/login"  => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get  "/sign_up" => "registrations#new"
  post "/sign_up" => "registrations#create"

  resources :books do
    resources :checkouts, only: [:create] do
      patch :checkin
    end
  end

  root to: "books#index"
end
