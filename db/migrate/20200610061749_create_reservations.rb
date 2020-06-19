class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.integer :datetime
      t.integer :body
      t.integer :hotel_id

      t.timestamps
    end
  end
end
