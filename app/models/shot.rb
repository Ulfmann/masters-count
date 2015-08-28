class Shot
  include Mongoid::Document

  belongs_to :leg

  field :first_dart, type: Integer
  field :second_dart, type: Integer
  field :third_dart, type: Integer
end
