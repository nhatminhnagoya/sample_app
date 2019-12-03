class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :apartment
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
