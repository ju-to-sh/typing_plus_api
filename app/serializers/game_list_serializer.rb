class GameListSerializer
  include JSONAPI::Serializer

  attributes :title, :content, :game_type, :level, :category
end
