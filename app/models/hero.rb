class Hero < ApplicationRecord
  belongs_to :user
  belongs_to :character_class

  has_many :hero_virtues
  has_many :virtues, through: :hero_virtues
end
