require_relative '../../app.rb'
# require 'capybara/rspec'

feature "Home page" do
  scenario "should return a message" do
    visit('/')
    expect(page).to have_content('Welcome to Battle!')
  end

  scenario "saves and diplays names that are entered" do
    visit('/')
    fill_in('Player_1', with: 'Jack')
    fill_in('Player_2', with: 'Kathleen')
    click_button('Submit')
    expect(page).to have_content('Player 1: Jack')
    expect(page).to have_content('Player 2: Kathleen')

    # save_and_open_page
    
  end
end

