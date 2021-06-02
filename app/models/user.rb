class User < ApplicationRecord
    has_many :works
    has_many :comments, through: works
end
