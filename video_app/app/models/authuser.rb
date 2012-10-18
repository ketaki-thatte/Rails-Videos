class Authuser < ActiveRecord::Base
  attr_accessible :email, :password_hash, :password_salt,:password,:password_confirmation
  attr_accessor :password
  before_save :encrypt_password
  #validate_confirmation_of :password
  #validate_presence_of :password
  #validate_presence_of :email
  #validate_uniqueness_of :email

  def encrypt_password
    self.password_salt= BCrypt::Engine.generate_salt
    self.password_hash=BCrypt::Engine.hash_secrete(password,password_salt)
  end

end
