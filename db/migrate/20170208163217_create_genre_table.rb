class CreateGenreTable < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.column :name, :string
      t.column :creation_date, :date
    end
    create_table :reviews do |t|
      t.column :rating, :integer
      t.column :review, :string
      t.timestamps
    end
  end
end
