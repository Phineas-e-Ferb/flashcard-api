class CreateFlashcardLists < ActiveRecord::Migration[5.2]
  def change
    create_table :flashcard_lists do |t|
      t.string :name
      t.string :difficulty
      t.string :photo

      t.timestamps
    end
  end
end
