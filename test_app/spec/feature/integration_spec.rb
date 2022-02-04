# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Create book with title only', type: :feature do
  scenario 'valid inputs and shown' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    click_on 'Show'
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Create book with title/author', type: :feature do
  scenario 'valid inputs and shown' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    click_on 'Show'
    expect(page).to have_content('harry potter')
    expect(page).to have_content('jk rowling')
  end
end

RSpec.describe 'Create book with title/price', type: :feature do
  scenario 'valid inputs and shown' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Price', with: '15.65'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    click_on 'Show'
    expect(page).to have_content('harry potter')
    expect(page).to have_content('15.65')
  end
end

RSpec.describe 'Create book with title/date', type: :feature do
  scenario 'valid inputs and shown' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    select '2020', :from => 'published_date_1i'
    select 'January', :from => 'published_date_2i'
    select '17', :from => 'published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    click_on 'Show'
    expect(page).to have_content('harry potter')
    expect(page).to have_content('2020-1-17')
  end
end
