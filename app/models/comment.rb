class Comment < ApplicationRecord
    belongs_to :work
    belongs_to :user

 scope :latest_user_comments, -> {where ("comments.last(3)")}


    def self.latest_user_comments
        comments = Comment.last(3)
    end
end