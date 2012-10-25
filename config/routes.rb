Literature::Application.routes.draw do

  root :to => 'application#start', :via => :get
  root :to => 'users#login', :via => :post

  get "sign_up" => "users#new"

  resources :users, :only => :create

end
