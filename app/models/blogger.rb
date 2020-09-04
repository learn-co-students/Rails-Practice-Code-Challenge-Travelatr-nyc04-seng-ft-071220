class Blogger < ApplicationRecord
has_many :posts, -> {order ("likes DESC")}
has_many :destinations, through: :posts


#this method will find the post with the highest amount of likes
def find_post_highest_likes
  highest=  self.posts.max do |like|
      like.likes
    end
  highest.title
end









end
