json.array!(@snippets) do |snippet|
  json.extract! snippet, :id, :code, :title, :price
  json.url snippet_url(snippet, format: :json)
end
