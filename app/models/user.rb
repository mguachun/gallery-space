class User < ApplicationRecord
    has_secure_password

    has_many :comments
    has_many :works, through: :comments

    validates :email, presence: true, uniqueness: true
    

end
