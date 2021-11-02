class Virtue < ApplicationRecord
  belongs_to :character_class
  def self.select_values(character_class)
    return [] unless !character_class.character_class_id.nil?
    CharacterClass.find_by(id: character_class.character_class_id).virtues.pluck(:name, :id)
  end
end
