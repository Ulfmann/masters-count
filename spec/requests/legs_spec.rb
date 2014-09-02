require 'rails_helper'

RSpec.describe "Legs", :type => :request do
  describe "GET /legs" do
    it "works! (now write some real specs)" do
      get legs_path
      expect(response.status).to be(200)
    end
  end
end
