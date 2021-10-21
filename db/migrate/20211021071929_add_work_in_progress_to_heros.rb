class AddWorkInProgressToHeros < ActiveRecord::Migration[6.1]
  def change
    add_column :heros, :work_in_progress, :boolean
  end
end
