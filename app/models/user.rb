class User < ActiveRecord::Base
  has_secure_password validations: false

  has_many :posts

  validates :email, email: true,
                    uniqueness: true,
                    allow_blank: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :password_digest, presence: true
end
