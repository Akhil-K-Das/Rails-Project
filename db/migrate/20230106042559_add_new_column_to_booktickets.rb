class AddNewColumnToBooktickets < ActiveRecord::Migration[7.0]
  def change
    add_column :booktickets, :from, :string
    add_column :booktickets, :to, :string
  end
end
