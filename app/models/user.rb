class User < ApplicationRecord
    include BCrypt

    def password
      @password ||= Password.new(password_hash)
    end
  
    def password=(new_password)
      @password = Password.create(new_password)
      self.password = @password
    end
end
