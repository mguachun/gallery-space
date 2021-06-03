class Work < ApplicationRecord
    belongs_to :user
    belongs_to :comments

    validates :artist, presence: true
    validates :name, presence: true
    validates :medium, presence: true

end
