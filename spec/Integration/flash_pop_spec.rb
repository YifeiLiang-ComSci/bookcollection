require 'rails_helper'


RSpec.describe 'Flash Message ', type: :feature do
    it 'shows flash message after adding a book' do
        visit new_book_path

        fill_in "title", with: "asdasd"
        fill_in "author", with: "first book"
        select "Romance", from: "genre"
        fill_in "price", with: 18
        select 'January', from: 'book_published_date_2i'
        select '1', from: 'book_published_date_3i'
        select '2016', from: 'book_published_date_1i'

        click_on "Create Book"

        expect(page).to have_content('Successfully Created Book: asdasd!')

        
        
    end
end

  
