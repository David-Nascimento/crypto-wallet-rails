Rails.application.routes.draw do
  resources :mining_types
  #get '/mining_types', to: 'mining_types#index'

  get 'welcome/index'
  #get '/inicio', to: 'welcome#index'

  resources :coins
  #get '/coins', to: 'coins#index'
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'welcome#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
