class FlashcardList < ApplicationRecord
    has_many :flashcards
    belongs_to :user
end
