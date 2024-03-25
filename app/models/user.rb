class User < ApplicationRecord
    has_many :posts
    has_many :comments
    
    validates:username, presence: true, length: { in: 4..20 }
    validates:email, presence: true, uniqueness: true

end
