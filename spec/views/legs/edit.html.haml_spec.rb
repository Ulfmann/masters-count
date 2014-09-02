require 'rails_helper'

RSpec.describe "legs/edit", :type => :view do
  before(:each) do
    @leg = assign(:leg, Leg.create!())
  end

  it "renders the edit leg form" do
    render

    assert_select "form[action=?][method=?]", leg_path(@leg), "post" do
    end
  end
end
