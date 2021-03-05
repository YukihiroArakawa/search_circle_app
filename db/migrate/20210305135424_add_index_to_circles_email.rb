class AddIndexToCirclesEmail < ActiveRecord::Migration[6.1]
  def change
    add_index :circles,:email,unique:true
  end
end
