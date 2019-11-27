require 'rails_helper'

describe Shelter, type: :model do
  describe "valiations" do
    it{should validate_presence_of :name}

  end
  # describe 'relationship' do
  #   it {should have_many :pets}
  # end
end
