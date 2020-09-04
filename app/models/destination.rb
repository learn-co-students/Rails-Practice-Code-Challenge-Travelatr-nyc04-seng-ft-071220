class Destination < ApplicationRecord
has_many :posts
has_many :bloggers, through: :posts

default_scope { order(created_at: :asc)}

def find_post_highest_likes
    highest=  self.posts.max do |like|
        like.likes
      end
    highest.title
  end


  def average_age
   get_age= self.bloggers.map do |age|
        age.age
   end
   get_age.sum/get_age.count.floor
end
  


end
