class Throw
  include Mongoid::Document

  belongs_to :user

  field :user_id
  field :score
  field :double,    type: Boolean
  field :triple,    type: Boolean
  field :check_out, type: Boolean

  embedded_in :round
end
