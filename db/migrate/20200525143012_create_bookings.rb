class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.timestamp :entry_time
      t.timestamp :exit_time
      t.references :user, null: false, foreign_key: true
      t.references :toilet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
