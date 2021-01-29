class BooksController < ApplicationController
  def index
    @books = Book.order("id")
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
      redirect_to(books_path)
    else
      render('new')
    end

  end

  def edit
  end

  def update
  end


  def delete
  end

  def destroy
  end
private 
  def book_params
    params.require(:book).permit(:title,:author,:genre,:price,:published_date)
  end
end
def flatten_date_array hash
  %w(1 2 3).map { |e| hash["date(#{e}i)"].to_i }
end