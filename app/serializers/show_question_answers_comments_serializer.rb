class ShowQuestionAnswersCommentsSerializer < ActiveModel::Serializer
  attributes :id,:title,:body,:created_at, :views
  has_many :answers
  has_many :comments,through: :answers



end
