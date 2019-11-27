require 'rails_helper'

RSpec.describe "pets index page", type: :feature do
  it "can see all pets info" do

    shelter_1 = Shelter.create(name: "saint.J sheleter",
                              addres: "123 street",
                              city: "lakewood",
                              state: "CO",
                              zip: "29132")

    pet_1 = shelter_1.pets.create!(image: "http://cdn.akc.org/content/article-body-image/newfoundland_dog_pictures.jpg",
                                   name: 'Jhon',
                                   approximate_age: 4,
                                   sex: 'male')

      visit '/pets'


      expect(page).to have_content(pet_1.name)
      expect(page).to have_content(pet_1.approximate_age)
      expect(page).to have_content(pet_1.sex)

  end
end
