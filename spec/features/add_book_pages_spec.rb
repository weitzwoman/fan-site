require 'rails_helper'

describe "the add a book process" do
  it "adds new book" do
    visit books_path
    click_link 'Add New Book'
    fill_in 'Title', :with => 'Animal Farm'
    fill_in 'Author', :with => 'George Orwell'
    fill_in 'Date of First Publication', :with => '1945/08/17'
    click_on 'Create Book'
    expect(page).to have_content("Animal Farm")
  end

  it "gives an error when no title is entered" do
    visit new_book_path
    click_on 'Create Book'
    expect(page).to have_content 'errors'
  end
end
