class AddPasswordDigestToCircles < ActiveRecord::Migration[6.1]
  def change
    add_column :circles, :password_digest, :string
  end
end
