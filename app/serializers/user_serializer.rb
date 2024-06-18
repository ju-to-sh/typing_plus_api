class UserSerializer
  include JSONAPI::Serializer

  attributes :nickname, :email, :avatar
end
