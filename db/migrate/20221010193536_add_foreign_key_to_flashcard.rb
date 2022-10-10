class AddForeignKeyToFlashcard < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :flashcards, :flashcard_lists
  end
end
