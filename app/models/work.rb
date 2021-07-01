class Work < ApplicationRecord
    # belongs_to :user
    # belongs_to :comments
    has_many :comments
    has_many :users, through: :comments

    validates :title, presence: true
    validates :artist, presence: true
    validates :year, presence: true
    validates :medium, presence: true


end
