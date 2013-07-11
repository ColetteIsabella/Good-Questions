class CreateGoodQuestions < ActiveRecord::Migration
  def change
    create_table :good_questions do |t|
      t.string :question
      t.string :why

      t.timestamps
    end
  end
end
