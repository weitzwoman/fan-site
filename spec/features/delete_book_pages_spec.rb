require 'rails_helper'

describe "the delete a book process" do
  it "deletes a book" do
    book = Book.create(:name => "Cannery Row", :author => "John Steinbeck", :creation_date => "1934/06/03")
    visit book_path(book.id)
    click_on "Delete Book"
    expect(page).to_not have_content "Cannery Row"
  end
end
