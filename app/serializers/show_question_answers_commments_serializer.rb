class ShowQuestionAnswersCommmentsSerializer < ActiveModel::Serializer
  attributes :id,:title ,:body
  has_many :answers
  has_many :comments ,through: :answers
end
