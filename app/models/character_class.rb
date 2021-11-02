class CharacterClass < ApplicationRecord
  has_many :virtues #TODO define the inverse_of option for our associations in models
  belongs_to :hero
  has_many :states
  def self.select_values
    CharacterClass.all.map { |character_class| [character_class.name, character_class.id, { data: { url: data_url(character_class) }}]}
  end

  private

  def self.data_url(character_class)
    Rails.application.routes.url_helpers.character_class_virtues_path(character_class, format: :json)
  end
end
