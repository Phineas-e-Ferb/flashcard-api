class AddUserToFlashcardLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :flashcard_lists, :user
  end
end
