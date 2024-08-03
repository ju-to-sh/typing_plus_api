class QuizSerializer
  include JSONAPI::Serializer

  attributes :content, :quiz_choices
  has_many :quiz_choices

  attribute :quiz_choices do |object|
    object.quiz_choices.pluck(:content, :is_correct).map do |content, is_correct|
      { content:, is_correct: }
    end
  end
end
