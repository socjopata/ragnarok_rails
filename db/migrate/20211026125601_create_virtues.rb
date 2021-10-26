class CreateVirtues < ActiveRecord::Migration[6.1]
  def change
    create_table :virtues do |t|
      t.references :character_class, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
