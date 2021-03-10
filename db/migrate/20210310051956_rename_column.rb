class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :questions, :question,:question_text
  end
end
