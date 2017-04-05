class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :zip
      t.string :city
      t.timestamps
    end
  end
end
