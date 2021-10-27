class AddInternalNameToCharacterClass < ActiveRecord::Migration[6.1]
  def change
    add_column :character_classes, :internal_name, :string
  end
end
