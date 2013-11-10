class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :published_at, :user_id
end
