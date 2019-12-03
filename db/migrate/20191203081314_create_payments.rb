class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :name
      t.integer :number
      t.datetime :expiry_date
      t.integer :cvv
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
