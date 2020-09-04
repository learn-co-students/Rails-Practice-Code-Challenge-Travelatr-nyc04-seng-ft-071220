class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination


    def add_like
       add_like= self.likes
       add_like += 1
       add_like

    end


end
