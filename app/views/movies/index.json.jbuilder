json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :length, :release, :videoformat_id, :rating
  json.url movie_url(movie, format: :json)
end
