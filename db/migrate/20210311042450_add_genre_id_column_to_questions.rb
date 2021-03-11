class AddGenreIdColumnToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :qgenre_id,:integer
  end
end
