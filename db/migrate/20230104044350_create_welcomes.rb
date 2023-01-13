class CreateWelcomes < ActiveRecord::Migration[7.0]
  def change
    create_table :welcomes do |t|
      t.string :login
      t.string :signup

      t.timestamps
    end
  end
end
