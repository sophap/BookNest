require 'rails_helper'

RSpec.describe "Authors API", type: :request do
  let!(:authors) { create_list(:author, 3) }

  it 'returns all authors' do
    get '/authors'
    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(3)
  end
end