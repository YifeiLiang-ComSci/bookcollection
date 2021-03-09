require 'rails_helper'
class Authors

    def initialize(authors)
        @authors = authors
    end

    def list_of_authors
        @authors.map(&:name).join(',')
    end
    
    
end
RSpec.describe Authors do

    it "should output the list of authors of a book after using function list_of_authors" do
        author1 = double("Authors", :name => "Yifei")
        author2 = double("Authors", :name => "John")

        Authors = Authors.new [author1,author2]

        expect(Authors.list_of_authors).to eq('Yifei,John') 

    end

end