class TypingGameResultSerializer
  include JSONAPI::Serializer

  attributes :type_speed, :miss_type, :score, :created_at
  belongs_to :user
end
