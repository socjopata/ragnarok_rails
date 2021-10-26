class CharacterClass < ApplicationRecord
  has_many :virtues #TODO define the inverse_of option for our associations in models
end
