class CreateFlashcards < ActiveRecord::Migration
  def change
    create_table :flashcards do |t|
      t.text :front
      t.text :back
      t.references :deck

      t.timestamps
    end
    add_index :flashcards, :deck_id
  end
end
