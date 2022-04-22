class OrderDetail < ApplicationRecord
  belongs_to :order_id
  belongs_to :menu_id
end
