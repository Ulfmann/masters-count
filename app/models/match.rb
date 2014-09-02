class Match
  include Mongoid::Document

  has_and_belongs_to_many :users
  has_many :legs

  field :type, type: String

end
