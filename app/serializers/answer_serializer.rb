class AnswerSerializer < ActiveModel::Serializer
  attributes :id ,:body,:downvote, :upvote ,:question_id 
  has_many :comments 
end
