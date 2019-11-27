require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can see all shelters names" do

    shelter_1 = Shelter.create(name: "saint.J sheleter",
                              addres: "123 street",
                              city: "lakewood",
                              state: "CO",
                              zip: "29132")
    shelter_2 = Shelter.create(name: "saint.P sheleter",
                              addres: "523 street",
                              city: "lakewood",
                              state: "CO",
                              zip: "29132")
    shelter_3 = Shelter.create(name: "saint.G sheleter",
                              addres: "132 street",
                              city: "lakewood",
                              state: "CO",
                              zip: "29132")

    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content(shelter_3.name)

  end
end
