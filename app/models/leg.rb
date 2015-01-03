class Leg
  include Mongoid::Document
  include Mongoid::Timestamps

  field :score, type: Integer, default: 501

  has_many :rounds
  accepts_nested_attributes_for :rounds

  def reduce_by(count)
    if count <= self.score
      self.score -= count
    end
  end
end
