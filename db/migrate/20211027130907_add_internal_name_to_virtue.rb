class AddInternalNameToVirtue < ActiveRecord::Migration[6.1]
  def change
    add_column :virtues, :internal_name, :string
  end
end
