class EditReviewTableAndAddAuthors < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :author, :string
    add_column :reviews, :reviewer, :string
    remove_column :reviews, :review, :string
    add_column :reviews, :content, :string
  end
end
