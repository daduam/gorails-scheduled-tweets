# frozen_string_literal: true

Rails.application.routes.draw do
  get "/about", to: "about#index"

  get "/sign-up", to: "registrations#new"
  post "/sign-up", to: "registrations#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  get "/password", to: "passwords#edit", as: :edit_password
  patch "/password", to: "passwords#update"

  root to: "main#index"
end
