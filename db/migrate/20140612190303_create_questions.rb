class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |table|
      table.integer :user_id, null: false
      table.string :title, null: false
      table.string :question, null: false

      table.timestamps
    end
  end
end
