require 'rails_helper'


feature 'As a User I want to add book ' do
    scenario 'Successful' do
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

    scenario "Unsuccessful" do
            visit new_book_path

            fill_in "title", with: ""
            fill_in "author", with: "first book"
            select "Romance", from: "genre"
            fill_in "price", with: 18
            select 'January', from: 'book_published_date_2i'
            select '1', from: 'book_published_date_3i'
            select '2016', from: 'book_published_date_1i'

            click_on "Create Book"
            expect(page).to have_content('Title must be given please')

    end
end

  
