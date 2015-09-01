json.array!(@pictures) do |picture|
  json.extract! picture, :id, :image_name, :title, :user_id
  json.url picture_url(picture, format: :json)
end
