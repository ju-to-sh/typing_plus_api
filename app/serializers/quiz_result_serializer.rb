class QuizResultSerializer
  include JSONAPI::Serializer

  attributes :quiz_id, :created_at
end
