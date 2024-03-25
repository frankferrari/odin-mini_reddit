class User < ActiveRecord::Base
    username:string [unique, 4-12 chars, present]
    email:string [unique, present]
    
    has_many Posts
end

class Post < ActiveRecord::Base
    url:string [present]
    
    belongs_to User
    has_many Comments
end

class Comment < ActiveRecord::Base
    state:string [present]
    
    belongs_to Post
end