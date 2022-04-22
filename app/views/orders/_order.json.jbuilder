json.extract! order, :id, :customer_id_id, :order_date, :total_price, :quantity, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
