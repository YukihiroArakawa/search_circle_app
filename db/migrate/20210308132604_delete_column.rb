class DeleteColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :genres, :genre_id
  end
end
