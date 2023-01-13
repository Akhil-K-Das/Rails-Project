class CreateBooktickets < ActiveRecord::Migration[7.0]
  def change
    create_table :booktickets do |t|
      t.string :bustype
      t.string :bus
      t.time :departure
      t.time :duration
      t.time :arrival
      t.integer :fare
      t.integer :seats_available

      t.timestamps
    end
  end
end
