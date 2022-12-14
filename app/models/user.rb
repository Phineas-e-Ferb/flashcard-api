require 'bcrypt'

class User < ApplicationRecord
    # users.password_hash in the database is a :string
    has_many :flashcard_lists
    include BCrypt

    def password
      Password.new(password_hash)
    end

    def password=(new_password)
      @password = Password.create(new_password)
      self.password_hash = @password
    end
end
