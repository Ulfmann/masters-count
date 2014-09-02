require 'rails_helper'

RSpec.describe "matches/index", :type => :view do
  before(:each) do
    assign(:matches, [
      Match.create!(
        :type => "Type"
      ),
      Match.create!(
        :type => "Type"
      )
    ])
  end

  it "renders a list of matches" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
