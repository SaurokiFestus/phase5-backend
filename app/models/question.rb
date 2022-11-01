class Question < ApplicationRecord
    validates :body, :title ,presence: true
    has_many :answers ,dependent: :destroy
  has_many :comments ,through: :answers ,dependent: :destroy
end
