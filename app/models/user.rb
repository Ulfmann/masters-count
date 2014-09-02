class User
  include Mongoid::Document

  has_and_belongs_to_many :matches

  field :name, type: String

end
