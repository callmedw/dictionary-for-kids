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


end
