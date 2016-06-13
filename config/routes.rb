Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :images do
    member do
      get 'serve'
    end
  end

  root to: 'images#index'
end
