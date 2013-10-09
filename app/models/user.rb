class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def self.authenticate(email, password)
    user_by_email = User.find_by_email(email)
    user_by_password = User.find_by_password(password)

    if user_by_email.id == user_by_password.id
      return true
    else
      return false
    end
  end
end
