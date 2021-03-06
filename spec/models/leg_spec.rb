require 'rails_helper'

describe Leg do
  before do
    @leg = Leg.new
  end

  it 'has a score' do
    expect(@leg).to respond_to :score
  end

  it 'has a default value of 501' do
    expect(Leg.new.score).to eq 501
  end

  it 'reduces its score' do
    @leg.score = 501
    expect{ @leg.reduce_by(51) }.to change{ @leg.score }.from(501).to(450)
  end

  it 'returns to the starting value if the score exceeds' do
    @leg.score = 32
    expect{ @leg.reduce_by(48) }.to_not change{ @leg.score }
  end
end

