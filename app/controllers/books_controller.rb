class BooksController < ApplicationController
  def index
    @books = Book.order("title")
  end

  def show
  end

  def new
  end
  
  def create

  end

  def edit
  end

  def update
  end


  def delete
  end

  def destroy
  end

end
