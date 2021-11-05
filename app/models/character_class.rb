class CharacterClass < ApplicationRecord
  has_many :virtues #TODO define the inverse_of option for our associations in models, delete because of haas_many through??
  belongs_to :hero
  has_many :states
end
