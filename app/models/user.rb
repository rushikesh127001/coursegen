class User < ApplicationRecord
    has_many :courses
    validates :name,
        presence: true,
        length:{minimum:3,maximum:25}
    
    has_secure_password
end    