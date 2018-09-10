class User < ActiveRecord::Base
  has_many :tweets

  validates :username, length: { in: 5..10 }
  validates :email, presence: true, uniquencess: true
  has_secure_password

  before_save do
    self.slug = self.username.gsub(/[^a-zA-Z0-9]+/, "-")
  end
end