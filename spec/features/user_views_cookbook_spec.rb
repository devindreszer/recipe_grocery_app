require 'rails_helper'

feature 'User views personal cookbook' do
  scenario 'when they sign in' do
    visit root_path
    devin = create(:user, email: "devin@example.com", password: "password")
    soup = Yummly.find("French-Onion-Soup-519625")
    Recipe.create!(
      user_id: 1,
      name: soup.name,
      image: soup.images.first.large_url,
      rating: soup.rating.to_i,
      servings: soup.number_of_servings.to_i,
      prep_time: soup.total_time_in_seconds.to_i,
      url: soup.attribution.url,
      is_custom: false,
      is_active: false)

    sign_in_as(devin)

    expect(page).to have_css ".list-title", text: "French Onion Soup"
  end
end
