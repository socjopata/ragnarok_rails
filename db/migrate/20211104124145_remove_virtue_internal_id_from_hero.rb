class RemoveVirtueInternalIdFromHero < ActiveRecord::Migration[6.1]
  def change
    remove_column :heros, :virtue_1_internal_id, :integer
    remove_column :heros, :virtue_2_internal_id, :integer
  end
end
