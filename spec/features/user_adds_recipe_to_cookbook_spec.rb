require 'rails_helper'

feature 'Signed in user adds recipe to cookbook' do
    background do
        devin = create(:user, email: "devin@example.com", password: "password")
        visit root_path
        sign_in_as(devin)
    end

    scenario 'by clicking add to cookbook from details page' do
        id = "French-Onion-Soup-519625"
        visit yummly_recipe_path(id)

        click_link "Add to Cookbook"

        expect(page).to have_css ".list-title", text: "French Onion Soup"
    end
end
