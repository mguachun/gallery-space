class User < ApplicationRecord
    has_secure_password

    has_many :works
    has_many :comments, through: works

    validates :email, presence: true, uniqueness: true
    

end
