class AddBoxOfficeToMovie < ActiveRecord::Migration[5.0]
  def change
  	add_column :movies, :box_office, :integer
  end
end
