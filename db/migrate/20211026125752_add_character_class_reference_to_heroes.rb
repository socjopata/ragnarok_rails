class AddCharacterClassReferenceToHeroes < ActiveRecord::Migration[6.1]
  def change
    add_reference :heros, :character_class, foreign_key: true
  end
end
