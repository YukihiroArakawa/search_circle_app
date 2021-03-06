class AddRememberDigestToCircles < ActiveRecord::Migration[6.1]
  def change
    add_column :circles, :remember_digest, :string
  end
end
