class Comment < ApplicationRecord
   belongs_to :answer 
   belong_to :user 
end
