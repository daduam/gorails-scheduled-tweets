# frozen_string_literal: true

Rails.application.routes.draw do
  get "/about", to: "about#index"

  get "/sign-up", to: "registrations#new"
  post "/sign-up", to: "registrations#create"

  root to: "main#index"
end
