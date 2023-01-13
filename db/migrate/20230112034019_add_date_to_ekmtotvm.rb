class AddDateToEkmtotvm < ActiveRecord::Migration[7.0]
  def change
    add_column :ekmtotvms, :date, :date
  end
end
