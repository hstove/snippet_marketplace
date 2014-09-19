json.array!(@orders) do |order|
  json.extract! order, :id, :snippet_id, :user_id, :amount, :usd_amount, :coinbase_id, :coinbase_code
  json.url order_url(order, format: :json)
end
