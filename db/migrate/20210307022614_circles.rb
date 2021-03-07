class Circles < ActiveRecord::Migration[6.1]
  def change
    remove_column :circles, :deadline,:date
  end
end
