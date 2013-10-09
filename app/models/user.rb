class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def self.authenticate(email, password)
    user_by_email = User.find_by_email(email)
    
    return user_by_email.password == password
  end
end
