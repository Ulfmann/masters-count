class Leg
  include Mongoid::Document
  include Mongoid::Timestamps

  field :score, type: Integer

  has_many :rounds
  accepts_nested_attributes_for :rounds

  def reduce_by(count)
    self.score -= count
  end
end
