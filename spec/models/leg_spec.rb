require 'rails_helper'

describe Leg do
  before do
    @leg = Leg.new
  end

  it 'has a score' do
    expect(@leg).to respond_to :score
  end

  it 'reduces its score' do
    @leg.score = 501
    expect(@leg.reduce_by(51)).to eq 450

  it 'returns to the starting value if the score exceeds' do
    @leg.score = 32
    expect{ @leg.reduce_by(48) }.to_not change{ @leg.score }
  end
end

