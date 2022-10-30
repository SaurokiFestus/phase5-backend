class ShowQuestionAnswersCommentsSerializer < ActiveModel::Serializer
  attributes :id,:title,:body
  has_many :answers


end
