class Round
  include Mongoid::Document

  embedded_in :leg
end
