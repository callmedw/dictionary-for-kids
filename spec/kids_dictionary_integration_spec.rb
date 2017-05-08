require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the homepage to add a word path', {:type => :feature}) do
  it('from the homepage clicks Add New Word button and travels to the new word form') do
    visit('/')
    click_link('Add New Word')
    expect(page).to have_content('Add a Word')
  end

  describe('the add a word path', {:type => :feature}) do
    it('takes user input to add a word to the dictionary') do
      visit('word_list/new')
      fill_in('word', :with => 'Word')
      click_button('Add Word')
      expect(page).to have_content('Success')
    end
  end

  describe('view word list path', {:type => :feature}) do
    it('can click on a word on the list that links to the defintion of the word') do
      visit('/word_list')
      click_link('Word')
      expect(page).to have_content('Definition:')
    end
  end

  describe('the add a definition path', {:type => :feature}) do
    it('takes user input to add a definition to a word in the dictionary') do
      visit('word_list/1/definition/new')
      fill_in('definition', :with => 'unit of language')
      click_button('Add definition')
      expect(page).to have_content('Success')
    end
  end

end
