class QuestionSerializer < ActiveModel::Serializer
  attributes :id ,:title ,:body,:user_id,:created_at,:views
end
