class Answer < ApplicationRecord
    validates :body, presence: true
    belongs_to :question
    has_many :comments ,dependent: :destroy
end
