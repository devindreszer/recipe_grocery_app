require 'rails_helper'

feature 'User views features' do
  scenario 'by clicking on a recipe' do
    visit root_path
    fill_in "Search for a Recipe", with: 'Onion soup'
    click_button "Search"

    click_link "French Onion Soup"

    expect(page).to have_css ".detail-title", text: "French Onion Soup"
    expect(page).to have_css ".detail-rating", text: "5"
    expect(page).to have_css ".detail-ingredients", text: "yellow onion"
    expect(page).to have_css ".detail-preptime", text: "1 hr 45 min"
  end
end
