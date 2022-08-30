Rails.application.routes.draw do
  get '/' => 'homes#top'
  namespace :admin do
  get '/' => 'homes#top'
  end

  get '/about' => 'homes#about'

  resources:items , only: [:index, :show]
  namespace :admin do
    resources:items , only: [:index, :show]
  end


  resources:customers , only: [:show, :edit, :update]
  post '/confirm' => 'customers#confirm'
  patch '/leave' => 'customers#leave'
  namespace :admin do
    resources:customers , only: [:index, :show, :edit, :update]
  end

  resources:cart_items ,only: [:index, :create, :update, :destroy]
  delete '/destroy_all' => 'cart_items#destroy_all'


  resources:orders, only: [:new, :index, :show]
  post '/confirm' => 'orders#confirm'
  get '/complete' => 'orders#complete'
  post '/' => 'orders#create'
  namespace :admin do
    resources:orders,only: [:show, :update]
  end


  resources:addresses,except: [:new, :show]

  namespace :admin do
  resources:genres,only: [:index, :create, :edit, :update]
  end

  resources:order_items,only: [:update]


  devise_for :admin,skip: [:registration,:passwords] ,controllers: {
    sessions:"admin/sessions"
  }
  devise_for :customers,skip:[:passwords], controllers: {
    registrations:"public/registrations",
    sessions:'public/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
