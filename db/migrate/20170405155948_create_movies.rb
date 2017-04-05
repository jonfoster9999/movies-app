class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.integer :category_id
      t.timestamps
    end
  end
end
