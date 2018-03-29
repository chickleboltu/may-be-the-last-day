class User < ApplicationRecord
    
    attr_accessor :password
    before_validation(on: :create) do
        encrypt_password
    end
    
    def authenticate(password)
        password_hash == BCrypt::Engine.hash_secret(password,password_salt)
    end
    
    def encrypt_password
        self.password_salt = BCrypt::Engine.generate_salt
        self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
    end
    validates :username,presence: true, length: {minimum:3,maximum:5}
    validates :password,presence: true, length: {minimum:5,maximum:10}
end