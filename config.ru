# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)

use Rack::ReverseProxy do  
  reverse_proxy(/^\/blog(\/.*)$/,
    'http://ancient-bastion-2620.herokuapp.com/$1',
    opts = {:preserve_host => true})
end  

run Rails.application
