Rails.application.routes.draw do

root 'welcome#index'
post 'welcome/subscribe' => 'welcome#subscribe'

 get "about" => 'welcome#about'
 get "press" => 'welcome#press'
 get "contact" => 'welcome#contact'


end
