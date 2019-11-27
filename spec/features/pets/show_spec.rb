require 'rails_helper'

RSpec.describe "pets show page", type: :feature do
  it "can see all info in the pets show page" do

    shelter_1 = Shelter.create(name: "saint.J sheleter",
                              addres: "123 street",
                              city: "lakewood",
                              state: "CO",
                              zip: "29132")


    shelter_2 = Shelter.create(name: "saint.p sheleter",
                            addres: "123 street",
                            city: "lakewood",
                            state: "CO",
                            zip: "987429")

    pet_1 = shelter_1.pets.create!(image: "http://cdn.akc.org/content/article-body-image/newfoundland_dog_pictures.jpg",
                                   name: 'Jhon',
                                   approximate_age: 4,
                                   sex: 'male',
                                   status: 'adoptable')
    pet_2 = shelter_2.pets.create!(image: "http://cdn.akc.org/content/article-body-image/newfoundland_dog_pictures.jpg",
                                   name: 'Jhon',
                                   approximate_age: 4,
                                   sex: 'male',
                                   status: 'pending adoption')

    visit "/pets/#{pet_1.id}"


    expect(page).to have_content(pet_1.name)
    expect(page).to have_content(pet_1.approximate_age)
    expect(page).to have_content(pet_1.sex)
    expect(page).to have_content(pet_1.shelter.name)
    expect(page).to have_content(pet_1.status)

  end
end
