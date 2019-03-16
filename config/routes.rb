Rails.application.routes.draw do
  
  namespace :admin do
  get 'order/index'
  end

  namespace :admin do
  get 'order/show'
  end

  namespace :admin do
  get 'order/close'
  end

  get 'checkout/index'

  get 'checkout/place_order'

  get 'checkout/thank_you'

  root :to => 'catalog#index'

  get 'about' => 'about#index'
  get 'checkout' => 'checkout#index'
  get 'admin/supplier' => 'admin/supplier#index'
  get 'admin/manufacturer' => 'admin/manufacturer#index'
  get 'admin/phone' => 'admin/phone#index'
  get 'admin/order' => 'admin/order#index'

  get 'admin/supplier/new'
  post 'admin/supplier/create'
  get 'admin/supplier/edit'
  post 'admin/supplier/update'
  post 'admin/supplier/destroy'
  get 'admin/supplier/show'
  get 'admin/supplier/show/:id' => 'admin/supplier#show'
  get 'admin/supplier/index'

  get 'admin/manufacturer/new'
  post 'admin/manufacturer/create'
  get 'admin/manufacturer/edit'
  post 'admin/manufacturer/update'
  post 'admin/manufacturer/destroy'
  get 'admin/manufacturer/show'
  get 'admin/manufacturer/show/:id' => 'admin/manufacturer#show'
  get 'admin/manufacturer/index'

  get 'admin/phone/new'
  post 'admin/phone/create'
  get 'admin/phone/edit'
  post 'admin/phone/update'
  post 'admin/phone/destroy'
  get 'admin/phone/show'
  get 'admin/phone/show/:id' => 'admin/phone#show'
  get 'admin/phone/index'

  post 'admin/order/close'
  post 'admin/order/destroy'
  get 'admin/order/show'
  get 'admin/order/show/:id' => 'admin/order#show'
  get 'admin/order/index'

  get 'catalog/show'
  get 'catalog/show/:id' => 'catalog#show'
  get 'catalog/index'
  get 'catalog/latest'

  get 'cart/add'
  post 'cart/add'
  get 'cart/remove'
  post 'cart/remove'
  get 'cart/clear'
  post 'cart/clear'

  get 'user_sessions/new'
  get 'user_sessions/create' # for showing failed login screen after restarting web server
  post 'user_sessions/create'
  get 'user_sessions/destroy'

  get 'user/new'
  post 'user/create'
  get 'user/show'
  get 'user/show/:id' => 'user#show'
  get 'user/edit'
  post 'user/update'

  get 'password_reset/new'
  post 'password_reset/create'
  get 'password_reset/edit'
  post 'password_reset/update'

  get 'checkout/index'
  post 'checkout/submit_order'
  get 'checkout/thank_you'

end
