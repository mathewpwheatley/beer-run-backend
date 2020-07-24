class CircuitSerializerPublic < ActiveModel::Serializer
  attributes(
    :id,
    :title,
    :author_name,
    :author_id,
    :description,
    :breweries_count,
    :likes_count,
    :favorites_count,
    :reviews_count,
    :rating
  )
  has_many(:breweries, serializer: BrewerySerializerIndex)
  has_many(:reviews, serializer: ReviewSerializer)
end
