class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :start
      t.string :end
      t.text :stops
      t.date :datetime
      t.integer :seats
      t.integer :price
      t.integer :id_user
      t.integer :id_raiting
      t.integer :id_request

      t.timestamps
    end
  end
end
