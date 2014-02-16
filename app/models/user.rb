class User < ActiveRecord::Base
  #This ensures that the email is in lowercase before it is saved to the database
  before_save {self.email = email.downcase}
  validates(:name, presence: true, length: {maximum: 50})
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #Here the uniqueness is inferred to be true
  validates(:email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false})

  has_secure_password
  validates :password, length: { minimum: 6 }
end
