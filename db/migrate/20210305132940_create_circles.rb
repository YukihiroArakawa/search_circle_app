class CreateCircles < ActiveRecord::Migration[6.1]
  def change
    create_table :circles do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :genre
      t.string :place
      t.string :frequency
      t.integer :sex
      t.string :introduction
      t.string :event
      t.date :deadline
      t.string :sns

      t.timestamps
    end
  end
end
