Rails.application.routes.draw do
  root to: 'calculations#index'
  resources :calculations
end


