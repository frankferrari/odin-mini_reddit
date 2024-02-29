class Course < ActiveRecord::Base
    -title:string [unique, present]
    -body:text [present]
    has_many Lessons
end

    class Lesson < ActiveRecord::Base
        -title:string [present]
        -body:text [present]

        belongs_to Course
    end



class User < ActiveRecord::Base
    username:string [unique, 4-12 chars, present]
    email:string [unique, present]

    has_one Profile, dependent: :destroy
end

    class Profile < ActiveRecord::Base
        age:integer
        gender:string

        belongs_to User
        has_one Country
    end

        class Country < ActiveRecord::Base
            country::string
            belongs_to Profile  profile_id:integer
            has_many States
        end

            class State < ActiveRecord::Base
                state:string
                belongs_to Country
                has_many Cities
            end

                class City < ActiveRecord::Base
                    city:string
                    belongs_to State
                end



class Pin < ActiveRecord::Base
    url:string [present]
    image:file  [present]
    has_many Comments, dependent: :destroy
end
 
    class Comment < ActiveRecord::Base
         state:string [present]
         belongs_to Pin
    end



class Message < ActiveRecord::Base
    url:string [present] 
    has_many Comments, dependent: :destroy
end

    class Comment < ActiveRecord::Base
        body:string [present]
        belongs_to Message
        has_many SubComments, dependent: :destroy
    end
    
        class SubComment < ActiveRecord::Base
            body:string [present]
            belongs_to Comment
        end