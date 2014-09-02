class Round
  include Mongoid::Document

  embedded_in :leg
  embeds_many :throws
end
