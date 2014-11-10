class Leg
  include Mongoid::Document

  has_many :rounds
end
