Rails.application.routes.draw do

 root 'welcome#index'
 post 'welcome/subscribe' => 'welcome#subscribe'

 get "about" => 'welcome#about'
 get "press" => 'welcome#press'

 match '/contacts', to: 'contacts#new', via: 'get'
 resources "contacts", only: [:new, :create]

end
