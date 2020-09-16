class UserSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :underscore
  attributes :name, :username

  attribute :posts do |user|
    PostSerializer.new(user.posts)
  end

  link :show_url do |user|
    "http://localhost:3000/users/#{user.id}"
  end
end
