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


end
