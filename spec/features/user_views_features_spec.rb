require 'rails_helper'

feature 'User views features' do
  scenario 'on the front page' do
    visit root_path

    expect(page).to have_content "Customizable recipes, a personal cookbook, and a dynamic grocery list."
    expect(page).to have_content "Cooking made simpler."
    expect(page).to have_content "Browse Recipes"
    expect(page).to have_content "Customize Recipes"
    expect(page).to have_content "Create Recipes"
    expect(page).to have_content "Active Recipe List"
    expect(page).to have_content "Personal Cookbook"
    expect(page).to have_content "Dynamic Grocery List"
  end
end
