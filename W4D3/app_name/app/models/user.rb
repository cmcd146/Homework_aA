class User < ApplicationRecord
  include BCrypt
  validates :username, :session_token, presence: true
  validates :password_digest, presence: true
  validates :password, minimum_length: 6, allow_nil: true

  def self.find_by_credentials(username, pw)
    current_user = User.find_by(username: username)
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64
  end

  def reset_session_token
    @session_token = User.generate_session_token
    self.save
  end

  def ensure_session_token
    @session_token ||= User.generate_session_token
  end

  def password=(val)
    @password = val
    @password_digest = bcrypt(val)
  end

end
