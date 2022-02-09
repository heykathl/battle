require_relative '../../app.rb'
# require 'capybara/rspec'

feature "Home page" do
  scenario "should return a message" do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end
end
