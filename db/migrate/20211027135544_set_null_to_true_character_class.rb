class SetNullToTrueCharacterClass < ActiveRecord::Migration[6.1]
  def change
    change_column_null :character_classes, :name, true
  end
end
