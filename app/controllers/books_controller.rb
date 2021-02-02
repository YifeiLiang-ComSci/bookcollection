class BooksController < ApplicationController
  def index
    @books = Book.order("id")
  end

  def show
    @book = Book.find(params[:id])
    name = @book.title
    flash[:notice] = 'You just viewd Book: '+name + "!"
  end

  def new
    @book = Book.new

    
  end

  def create


    @book = Book.new(book_params)
    if @book.save
      name = @book.title
      flash[:notice] = 'Successfully Created Book: '+name + "!"
      redirect_to(books_path)
    else
      render('new')
    end

  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    name = @book.title
    flash[:notice] = 'Successfully Edited Book: '+name + "!"
    if @book.update(book_params)
      redirect_to(books_path)
    else
      render('edit')
    end
  end


  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    name = @book.title
    @book.destroy
    flash[:notice] = 'Successfully Deleted Book: '+name + "!"
    redirect_to(books_path)
  end
private 
  def book_params
    params.require(:book).permit(:title,:author,:genre,:price,:published_date )
  end
end