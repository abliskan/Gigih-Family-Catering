json.extract! customer, :id, :fullname, :email, :phone, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
