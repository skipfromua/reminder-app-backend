Rails.application.routes.draw do
  devise_for :users,
    skip: %i[registrations sessions],
    defaults: { format: :json }

  namespace :auth do
    devise_scope :user do
      resource :sessions, only: %i[create]
      resource :registrations, only: %i[create]
    end
  end

  root "home#index"
end
