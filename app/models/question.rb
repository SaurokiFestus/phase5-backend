class Question < ApplicationRecord
    validates :body, :title ,presence:  true
    has_many :answers ,dependent: :destroy
  has_many :comments ,through: :answers ,dependent: :destroy

  #add this line to app/models/question.rb
acts_as_taggable_on :tags
end
