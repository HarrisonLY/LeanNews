class Welcome < ActiveRecord::Base

#def subscribe(optin = false)
#    response = $mailchimp.lists.subscribe({
#       id: '49304ea680',
#       :email => {:email => params[:email][:address]},
#       double_optin: optin,
#    })
#end


def index
end

def about
end

def press
end

def contact
end

def subscribe

    @list_id = "49304ea680"
    gb = Gibbon::API.new

    gb.lists.subscribe({
      :id => @list_id,
      :email => {:email => params[:email][:address]}
      })

end


end


