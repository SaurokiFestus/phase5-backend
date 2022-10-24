class Question < ApplicationRecord
    validates :body, :title ,presence: true

    has_many :all_answers
#   has_many :comments ,through: :all_answers
end
