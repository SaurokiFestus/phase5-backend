class ShowQuestionAnswersCommmentsSerializer < ActiveModel::Serializer
  attributes :id,:title ,:body
  has_many :all_answers
  # has_many :comments ,through: :all_answers
end
