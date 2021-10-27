class SetNullToTrueVirtue < ActiveRecord::Migration[6.1]
  def change
    change_column_null :virtues, :name, true
    change_column_null  :virtues, :description, true
  end
end
