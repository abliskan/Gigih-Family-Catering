class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :fullname
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
