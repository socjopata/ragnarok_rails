class Virtue < ApplicationRecord
  # belongs_to :character_class #delete
  has_many :hero_virtues
  has_many :heros, through: :hero_virtues
end
