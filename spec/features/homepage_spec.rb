require_relative '../../app.rb'
# require 'capybara/rspec'

feature "Home page" do
  scenario "should return a message" do
    visit('/')
    expect(page).to have_content('Welcome to Battle!')
  end
end

feature "Player names" do
  scenario "saves and diplays names that are entered" do
    sign_in_and_play
    expect(page).to have_content('Player 1: Jack')
    expect(page).to have_content('Player 2: Kathleen')

    # save_and_open_page
  end
end

feature "Display hit points" do
  scenario "shows player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content('Kathleen hit points: 100')
  end
end
