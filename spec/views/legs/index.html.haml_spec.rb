require 'rails_helper'

RSpec.describe "legs/index", :type => :view do
  before(:each) do
    assign(:legs, [
      Leg.create!(),
      Leg.create!()
    ])
  end

  it "renders a list of legs" do
    render
  end
end
