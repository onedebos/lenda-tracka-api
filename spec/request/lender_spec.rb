require 'rails_helper'
require 'faker'


RSpec.describe 'Lenders', type: :request do
  params = {name:Faker::Name.name, email: Faker::Internet.email }
  headers = { 'Accept': 'application/json', 'Content-Type': 'application/json' }
    describe "Signups" do
        it "verifies that a user can sign up with the correct params" do
            post '/api/v1/lender', params: params.to_json, headers: headers
            json_response = JSON.parse(response.body)
            expect(json_response['lender']['name']).to eq(params[:name])
            expect(json_response['lender']['email']).to eq(params[:email])
        end

        it "creates a user if the user doesn't already exist" do
            post '/api/v1/lender', params: params.to_json, headers: headers
            json_response = JSON.parse(response.body)
            expect(response.status).to eq(201)
        end

        it "returns an already created user if the user exists" do
            post '/api/v1/lender', params: params.to_json, headers: headers
            post '/api/v1/lender', params: params.to_json, headers: headers
            json_response = JSON.parse(response.body)
            expect(response.status).not_to eq(201)
            expect(response.status).to eq(200)
        end
    
    end

end