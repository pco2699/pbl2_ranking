require 'csv'

Rails.application.routes.draw do
  resources :predict_data
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #objects に限り、post で import 処理を許可する
  resources 'predict_data', only: :index do
    collection { post :import }
  end
end
