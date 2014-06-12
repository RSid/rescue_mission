class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |table|
      table.integer :user_id, null: false
      table.integer :question_id, null: false
      table.string :answer, null: false
      table.boolean :is_best

      table.timestamps
    end
  end
end
