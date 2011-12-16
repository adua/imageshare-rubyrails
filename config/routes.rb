ImageshareRailsTest::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :uploads

  resources :users

  resources :sites
  match '/' => 'sites#show', :constraints => {:subdomain => /.+/}
  root to: 'sites#index'
 end
