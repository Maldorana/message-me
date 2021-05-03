class User < ApplicationRecord
    has_many :messages, dependent: :destroy
    before_save { self.username = username.capitalize }
    validates :username, presence: true, 
                        uniqueness: { case_sensitive: false }, 
                        length: { minimum: 3, maximum: 20 }
    has_secure_password
end
