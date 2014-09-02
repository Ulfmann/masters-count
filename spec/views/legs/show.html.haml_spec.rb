require 'rails_helper'

RSpec.describe "legs/show", :type => :view do
  before(:each) do
    @leg = assign(:leg, Leg.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
