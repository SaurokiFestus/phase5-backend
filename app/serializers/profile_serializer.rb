class ProfileSerializer < ActiveModel::Serializer
  attributes :id,:name,:email,:bio,:interests,:cohort,:user_id
end
