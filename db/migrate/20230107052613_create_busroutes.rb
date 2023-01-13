class CreateBusroutes < ActiveRecord::Migration[7.0]
  def change
    create_table :busroutes do |t|
      t.string :route
      t.string :first_bus
      t.string :last_bus

      t.timestamps
    end
  end
end
