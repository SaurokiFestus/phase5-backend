class VoteSerializer < ActiveModel::Serializer
  attributes :id,:up_vote, :down_vote
end
