class AddAverageRating < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :average_rating, :float
  end
end
