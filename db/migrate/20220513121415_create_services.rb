class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.references :provider, null: false, foreign_key: { to_table: :users }
      t.string :title, null: false
      t.text :about
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :long, precision: 10, scale: 6
      t.float :price
      t.string :price_unit
      t.string :additional_charges
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
