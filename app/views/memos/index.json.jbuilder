json.array!(@memos) do |memo|
  json.extract! memo, :id, :link, :info, :user_id
  json.url memo_url(memo, format: :json)
end
