class AddAdminToCircles < ActiveRecord::Migration[6.1]
  def change
    add_column :circles, :admin, :boolean, default: false
  end
end
