ImageshareRailsTest::Application.routes.draw do
  resources :uploads

  resources :users

  resources :sites
  match '/' => 'sites#show', :constraints => {:subdomain => /.+/}
  root to: 'sites#index'
 end
