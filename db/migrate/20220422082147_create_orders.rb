class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :customer_id, null: false, foreign_key: true
      t.datetime :order_date
      t.decimal :total_price
      t.integer :quantity
      t.string :status

      t.timestamps
    end
  end
end
