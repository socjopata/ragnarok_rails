class CreateHeroVirtues < ActiveRecord::Migration[6.1]
  def change
    create_table :hero_virtues do |t|
      t.belongs_to :hero
      t.belongs_to :virtue
      t.timestamps
    end
  end
end
