require 'rails_helper'

RSpec.describe "legs/new", :type => :view do
  before(:each) do
    assign(:leg, Leg.new())
  end

  it "renders new leg form" do
    render

    assert_select "form[action=?][method=?]", legs_path, "post" do
    end
  end
end
