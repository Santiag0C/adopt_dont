# require 'rails_helper'
#
# RSpec.describe "new pet on a specific shelter", type: :feature do
#   it "can click a link on the shelter pets index page and create a new pet" do
#
#     shelter_1 = Shelter.create(name: "saint.J sheleter",
#                               addres: "123 street",
#                               city: "lakewood",
#                               state: "CO",
#                               zip: "29132")
#
#     visit "/shelters/#{shelter_1.id}/pets"
#
#     click_link 'New'
#
#     expect(current_path).to eq("/shelters/#{shelter_1.id}/pets/new")
#
#     fill_in 'image', with: 'http://cdn.akc.org/content/article-body-image/newfoundland_dog_pictures.jpg'
#     fill_in 'name', with: 'goldy'
#     fill_in 'description', with: 'frendly'
#     fill_in 'approximate_age', with: 3
#     fill_in 'sex', with: 'male'
#
#     click_button 'Add'
#
#     expect(current_path).to eq("/shelters/#{shelter_1.id}/pets")
#
#     xpect(page).to have_content('goldy')
#     expect(page).to have_content(3)
#     expect(page).to have_content('male')
#
#   end
# end
