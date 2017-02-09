class BooksController < ApplicationController

  def index
    if params[:order] == 'name'
      @books = Book.all.order('name')
    elsif params[:order] == 'author'
      @books = Book.all.order('author')
    elsif params[:order] == 'rating'
      @books = Book.all.order('average_rating DESC')
    else
      @books = Book.all
    end
  end

  def show
    @book = Book.find(params[:id])
  end
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book= Book.find(params[:id])
    if @book.update(book_params)
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def search
    @books = Book.basic_search(params[:query])
    render :index
  end

private
  def book_params
    params.require(:book).permit(:name, :author, :creation_date)
  end
end
