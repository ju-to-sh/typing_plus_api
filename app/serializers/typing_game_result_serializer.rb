class TypingGameResultSerializer
  include JSONAPI::Serializer

  attributes :type_speed, :miss_type, :score
  belongs_to :user
end
