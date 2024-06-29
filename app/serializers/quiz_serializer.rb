class QuizSerializer
  include JSONAPI::Serializer

  attributes :content, :quiz_choices
  has_many :quiz_choices

  attribute :quiz_choices do |object|
    object.quiz_choices.map { |content, is_correct| { content: content, is_correct: is_correct } }
  end
end
