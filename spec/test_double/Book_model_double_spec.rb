require 'rails_helper'
class Book

    def initialize(authors)
        @authors = authors
    end

    def list_of_authors
        @authors.map(&:name).join(',')
    end
    
    
end
RSpec.describe Book do

    it "should output the list of authors of a book after using function list_of_authors" do
        author1 = double("author", :name => "Yifei")
        author2 = double("author", :name => "John")

        book = Book.new [author1,author2]

        expect(book.list_of_authors).to eq('Yifei,John') 

    end

end