class CreateQgenres < ActiveRecord::Migration[6.1]
  def change
    create_table :qgenres do |t|
      t.string :genre

      t.timestamps
    end
  end
end
