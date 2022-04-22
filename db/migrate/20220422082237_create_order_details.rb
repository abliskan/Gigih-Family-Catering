class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.references :order_id, null: false, foreign_key: true
      t.references :menu_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
