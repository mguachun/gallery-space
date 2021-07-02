class Work < ApplicationRecord
 
    has_many :comments
    has_many :users, through: :comments

    validates :title, presence: true
    validates :artist, presence: true
    validates :year, presence: true
    validates :medium, presence: true


end
