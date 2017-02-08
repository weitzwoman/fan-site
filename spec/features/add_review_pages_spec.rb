require 'rails_helper'

describe "the add a review process" do
  it "adds new review" do
    book = Book.create(:name => "East of Eden", :author => "J Steinbeck", :creation_date => "1933/06/03")
    visit book_path(book.id)
    click_link 'Add a Review'
    fill_in 'Reviewer', :with => 'Opinionated Olive'
    fill_in 'Content', :with => 'This rules'
    choose 'review_rating_4'
    click_on 'Create Review'
    expect(page).to have_content("Here are the reviews for this book")
  end

  it "gives an error when no content is entered" do
    book = Book.create(:name => "East of Eden", :author => "J Steinbeck", :creation_date => "1933/06/03")
    visit new_book_review_path(book.id)
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
