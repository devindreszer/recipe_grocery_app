require 'rails_helper'

feature 'User searches for recipe' do
  scenario 'on the front page' do
    visit root_path
    fill_in "Search for a Recipe", with: 'Onion soup'
    click_button "Search"

    expect(page).to have_content "French Onion Soup"
    expect(page).to have_content "Onion and Bacon Soup"
    expect(page).to have_content "Caramelized Balsamic-Red Onion Soup with Cheese-Topped Croutons"
    expect(page).to have_content "French Onion Soup Grilled Cheese"
  end
end
