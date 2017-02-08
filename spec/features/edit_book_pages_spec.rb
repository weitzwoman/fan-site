require 'rails_helper'

describe "the edit a book process" do
  it "edits a book" do
    book = Book.create(:name => "Cannery Row", :author => "John Steinbeck", :creation_date => "1934/06/03")
    visit book_path(book.id)
    click_on "Edit Book"
    fill_in "Title", :with => "Of Mice and Men"
    click_on "Update Book"
    expect(page).to have_content "Of Mice and Men"
  end
end
