class Daily < ActiveRecord::Base

validates :title, presence: true, uniqueness: true
validates :slug, presence: true, uniqueness: true
validates :content, presence: true

before_validation :generate_slug

def second
 Daily.order(:created_at).offset(1).last
end


def previous_post
 Daily.where(["id < ?", id]).last
end

def next_post
 Daily.where(["id > ?", id]).first
end

def to_param
  slug
end

def generate_slug
  self.slug ||= created_at.strftime("%m-%d-%Y").parameterize if created_at
end

end