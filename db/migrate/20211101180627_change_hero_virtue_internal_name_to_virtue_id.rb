class ChangeHeroVirtueInternalNameToVirtueId < ActiveRecord::Migration[6.1]
  def change
    change_column :heros, :virtue_1_internal_name, :integer
    rename_column :heros, :virtue_1_internal_name, :virtue_1_internal_id
    change_column :heros, :virtue_2_internal_name, :integer
    rename_column :heros, :virtue_2_internal_name, :virtue_2_internal_id
  end
end
