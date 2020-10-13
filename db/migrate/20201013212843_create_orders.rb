class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :delivery_date
      t.string :delivery_timeframe
      t.string :paid_to
      t.string :amount
      t.string :payment_method
      t.string :discount
      t.string :sale_channel
      t.string :message
      t.references :customer, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
