class AddActivationToCircles < ActiveRecord::Migration[6.1]
  def change
    add_column :circles, :activation_digest, :string
    add_column :circles, :activated, :boolean,default: false
    add_column :circles, :activated_at, :datetime
  end
end
