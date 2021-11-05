class AddVirtuesToHero < ActiveRecord::Migration[6.1]
  def change
    add_column :heros, :virtue_1_internal_name, :string
    add_column :heros, :virtue_2_internal_name, :string
  end
end
