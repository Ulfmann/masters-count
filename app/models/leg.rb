class Leg
  include Mongoid::Document

  field :score, type: Integer

  has_many :rounds
  accepts_nested_attributes_for :rounds
end
