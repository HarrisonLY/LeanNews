class Daily < ActiveRecord::Base

def second
 Daily.order(:created_at).offset(1).last
end


def previous_post
 Daily.where(["id < ?", id]).last
end

def next_post
 Daily.where(["id > ?", id]).first
end


end