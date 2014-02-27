json.array!(@orders) do |order|
  json.extract! order, :id, :snippet_id, :user_id, :amount, :status
  json.url order_url(order, format: :json)
end
