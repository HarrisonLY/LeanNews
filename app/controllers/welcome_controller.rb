class WelcomeController < ApplicationController

def subscribe(optin = false)
gb = Gibbon::API.new
gb.lists.subscribe({
       id: '49304ea680',
       :email => {:email => params[:email][:address]},
       double_optin: optin,
    })
end

end

