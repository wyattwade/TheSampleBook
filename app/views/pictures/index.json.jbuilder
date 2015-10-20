json.array!(@pictures) do |picture|
  json.extract! picture, :id, :image, :description
  json.url picture_url(picture, format: :json)
end
