class Work < ApplicationRecord
    belongs_to :user
    belongs_to :comments

    validates :email, uniqueness: true
end
