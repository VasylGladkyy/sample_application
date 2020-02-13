class User < ApplicationRecord
  before_save { email.downcase! }
  
  validates :name, length: { maximum: 50 }, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: { maximum: 255 },
                    presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness:  { case_sensitive: false}

end
