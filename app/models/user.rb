class User < ApplicationRecord
    has_many :plants
    validates :username, length: { in: 3..12 }
    validates :password, length: { in: 6..20 }
    validates :name, :username, :email, presence: true
    has_secure_password
end
