class RenameCirclesColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :circles,:type,:category
  end
end
