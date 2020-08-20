require 'rails_helper'

RSpec.describe Lendee, type: :model do
  describe 'Lendees' do
    it "verifies that a lender can create lendees" do
      lender = Lender.create!(email: 'something@gmail.com', name: 'something')
      lendee_1 = Lendee.create!(lender_id: lender.id, email:"lendee1@gmail.com", name: "solape")
      lendee_2 = Lendee.create!(lender_id: lender.id, email:"lendee2@gmail.com", name: "anu")
      expect(lender.lendees.length).to eq(2) 
    end

    it "verifies that a lendee belongs only to the lender that created it" do
      lender = Lender.create!(email: 'something@gmail.com', name: 'something')
      lender_2 = Lender.create!(email: 'something2@gmail.com', name: 'something')
      lendee_1 = Lendee.create!(lender_id: lender.id, email:"lendee1@gmail.com", name: "solape")
      lendee_2 = Lendee.create!(lender_id: lender.id, email:"lendee2@gmail.com", name: "anu")
      lendee_3 = Lendee.create!(lender_id: lender_2.id, email:"lendee2@gmail.com", name: "anu")
      expect(lender.lendees.length).to eq(2) 
      expect(lender_2.lendees.length).to eq(1) 
    end
  end
end
