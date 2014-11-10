class Round
  include Mongoid::Document

  embedded_in :leg
  embeds_many :throws

  field :first_throw, type: Integer
  field :second_throw, type: Integer
  field :third_throw, type: Integer
end
