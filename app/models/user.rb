class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    #bcrypt password security
    has_secure_password
end
