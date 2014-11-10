class Round
  include Mongoid::Document

  belongs_to :leg

  field :first_throw, type: Integer
  field :second_throw, type: Integer
  field :third_throw, type: Integer
end
