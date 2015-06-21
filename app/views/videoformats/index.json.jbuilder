json.array!(@videoformats) do |videoformat|
  json.extract! videoformat, :id, :name
  json.url videoformat_url(videoformat, format: :json)
end
