require 'rails_helper'

RSpec.describe "New Shelter", type: :feature do
  describe "As a visitor when I go to the new shelter form" do
    describe "i click on the new shelter link on the index page" do
    it 'creates a new shelter' do

      visit '/shelters'

      click_on 'New Shelter'

      expect(current_path).to eq('/shelters/new')

      fill_in 'name', with: "Santiago's Shelter"
      fill_in 'addres', with: "12 street"
      fill_in 'city', with: "lakewood"
      fill_in 'state', with: "CO"
      fill_in 'zip', with: 23817

      click_on 'Create'

      expect(current_path).to eq('/shelters')

      expect(page).to have_content("Santiago's Shelter")
      expect(page).to have_content("12 street")
      expect(page).to have_content("lakewood")
      expect(page).to have_content("CO")
      expect(page).to have_content(23817)
      end
    end
  end
end
