class ShowQuestionAnswersCommentsSerializer < ActiveModel::Serializer
  attributes :id,:title,:body,:created_at,:user_id ,:views,:tag_list
  has_many :answers
  has_many :comments,through: :answers



end
