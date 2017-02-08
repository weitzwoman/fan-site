class ReviewsController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @review = @book.reviews.new
  end

  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.new(review_params)
    if @review.save
      redirect_to book_path(@review.book)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    @book = Book.find(params[:book_id])
  end

  def update
    @review = Review.find(params[:id])
    @book = Book.find(params[:book_id])
    if @review.update(review_params)
      redirect_to book_path(@review.book)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to book_path(@review.book)
  end

private
  def review_params
    params.require(:review).permit(:rating, :review)
  end
end
