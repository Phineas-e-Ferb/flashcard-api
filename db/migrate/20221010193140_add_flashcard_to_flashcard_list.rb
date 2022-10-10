class AddFlashcardToFlashcardList < ActiveRecord::Migration[5.2]
  def change
    add_reference :flashcards, :flashcard_list
  end
end
