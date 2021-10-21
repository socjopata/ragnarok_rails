class AddUserToHeros < ActiveRecord::Migration[6.1]
  def change
    add_reference :heros, :user, foreign_key: true
  end
end
