require 'rails_helper'

describe Leg do
  before do
    @leg = Leg.new
  end

  it 'has a score' do
    expect(@leg).to respond_to :score
  end
end
