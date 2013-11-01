class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :questions
      t.string :correctAnswer
      t.string :incorrect1
      t.string :incorrect2
      t.string :incorrect3
      t.text :correctAnswerSentence

      t.timestamps
    end
  end
end
