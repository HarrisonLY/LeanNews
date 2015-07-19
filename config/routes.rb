Rails.application.routes.draw do


 root 'welcome#index'
 post 'welcome/subscribe' => 'welcome#subscribe'

 get "about" => 'welcome#about'
 get "press" => 'welcome#press'
 get "contact" => 'welcome#contact'

 resources :dailies
 resources :daily
 get "admin-daily" => 'dailies#admin'

 resources :users
 get 'signup' => 'users#new'

 resource :session
 get "signin" => "sessions#new"

 #map.sitemap '/sitemap.xml', :controller => 'sitemap'
 #match '/contacts', to: 'contacts#new', via: 'get'
 #resources "contacts", only: [:new, :create]


end