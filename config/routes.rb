Rails.application.routes.draw do

 root 'welcome#index'

 resources :sitemaps, :only => :index
 get "sitemap.xml" => "sitemaps#index", :format => "xml", :as => :sitemap

 post 'welcome/subscribe' => 'welcome#subscribe'

 get "about" => 'welcome#about'
 get "press" => 'welcome#press'
 get "contact" => 'welcome#contact'
 get "admin" => 'welcome#admin'

 get "test" => 'welcome#test'
 get "contest" => 'welcome#contest'
 get "golden" => 'welcome#golden'
 get "share" => 'welcome#share'

 match "/404" => "errors#error404", via: [ :get, :post, :patch, :delete ]

 resources :dailies, path: '/daily'
 get "admin-daily" => 'dailies#admin'

 resources :blogs, path: '/blog'
 get "admin-blog" => 'blogs#admin'

 resources :events
 get "admin-event" => 'events#admin'

 resources :jobs
 get "admin-job" => 'jobs#admin'

 resources :users, :except => [:new]
 #get 'signup' => 'users#new'

 resource :session
 get "signin" => "sessions#new"

 #map.sitemap '/sitemap.xml', :controller => 'sitemap'
 #match '/contacts', to: 'contacts#new', via: 'get'
 #resources "contacts", only: [:new, :create]


end