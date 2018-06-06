Rails.application.routes.draw do
  devise_for :users, skip: :registrations
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'rails_admin/main#dashboard'
end
