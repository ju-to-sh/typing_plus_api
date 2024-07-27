class LikeSerializer
  include JSONAPI::Serializer

  attributes :user_id, :game_list_id
end
