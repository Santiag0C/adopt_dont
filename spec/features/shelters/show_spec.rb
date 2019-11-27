require 'rails_helper'

RSpec.describe "shelter show page", type: :feature do
  it "can see all info about specific shelter" do
    shelter_1 = Shelter.create(name: "saint.J sheleter",
                              addres: "123 street",
                              city: "lakewood",
                              state: "CO",
                              zip: "29132"
                            )

    visit "/shelters/#{shelter_1.id}"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_1.addres)
    expect(page).to have_content(shelter_1.city)
    expect(page).to have_content(shelter_1.state)
    expect(page).to have_content(shelter_1.zip)
  end
end
