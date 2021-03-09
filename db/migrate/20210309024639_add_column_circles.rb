class AddColumnCircles < ActiveRecord::Migration[6.1]
  def change
    add_column :circles, :type,:string
  end
end
