class ShowQuestionAnswersCommentsSerializer < ActiveModel::Serializer
  attributes :id,:title,:body
  has_many :answers
  has_many :comments

end
