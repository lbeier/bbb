class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :postcode
      t.string :additional_info
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
