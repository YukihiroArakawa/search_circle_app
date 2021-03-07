class AddResetToCircles < ActiveRecord::Migration[6.1]
  def change
    add_column :circles, :reset_digest, :string
    add_column :circles, :reset_sent_at, :datetime
  end
end
