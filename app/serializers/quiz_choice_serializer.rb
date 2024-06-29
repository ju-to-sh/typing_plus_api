class QuizChoiceSerializer
  include JSONAPI::Serializer

  attributes :content, :is_correct
  belongs_to :quiz
end
