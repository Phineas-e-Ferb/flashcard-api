class AddForeignKeyToFlashcardList < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :flashcard_lists, :users
  end
end
