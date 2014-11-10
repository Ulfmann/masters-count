class Leg
  include Mongoid::Document

  has_many :rounds
  accepts_nested_attributes_for :rounds
end
