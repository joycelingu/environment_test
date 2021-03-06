# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K Rowling'
    fill_in 'Price', with: '14.99'
    select '2007', :from => 'book_published_date_1i'
    select 'July', :from => 'book_published_date_2i'
    select '21', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K Rowling'
    fill_in 'Price', with: '14.99'
    select '2007', :from => 'book_published_date_1i'
    select 'July', :from => 'book_published_date_2i'
    select '21', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K Rowling')
  end
end

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid price' do
      visit new_book_path
      fill_in 'Title', with: 'harry potter'
      fill_in 'Author', with: 'J.K Rowling'
      fill_in 'Price', with: '14.99'
      select '2007', :from => 'book_published_date_1i'
      select 'July', :from => 'book_published_date_2i'
      select '21', :from => 'book_published_date_3i'
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('14.99')
    end
end

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid published date' do
      visit new_book_path
      fill_in 'Title', with: 'harry potter'
      fill_in 'Author', with: 'J.K Rowling'
      fill_in 'Price', with: '14.99'
      select '2007', :from => 'book_published_date_1i'
      select 'July', :from => 'book_published_date_2i'
      select '21', :from => 'book_published_date_3i'
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('2007-07-21')
    end
  end