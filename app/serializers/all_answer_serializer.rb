class AllAnswerSerializer < ActiveModel::Serializer
  attributes :id ,:body,:downvote, :upvote
end
