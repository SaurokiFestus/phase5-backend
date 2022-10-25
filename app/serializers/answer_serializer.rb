class AnswerSerializer < ActiveModel::Serializer
  attributes :id ,:body,:downvote, :upvote ,:question_id
end
