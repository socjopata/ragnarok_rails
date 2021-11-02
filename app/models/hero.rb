class Hero < ApplicationRecord
  belongs_to :user
  has_one :character_class
end
