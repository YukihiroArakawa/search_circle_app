class RenameGenreColumnToCircles < ActiveRecord::Migration[6.1]
  def change
    rename_column :circles,:genre,:genre_id 
  end
end
