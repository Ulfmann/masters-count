class Match
  include Mongoid::Document

  field :type, type: String

  has_many :users
  has_many :legs
end
