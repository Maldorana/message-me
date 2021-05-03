class User < ApplicationRecord
    before_save { self.username = username.capitalize }
    validates :username, presence: true, 
                        uniqueness: { case_sensitive: false }, 
                        length: { minimum: 3, maximum: 20 }
    has_secure_password
end
