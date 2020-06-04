class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
  					format: { with: VALID_EMAIL_REGEX }
  VALID_MOBILE_REGEX = /\d[0-9]\)*\z/
  validates :mobile, presence: true, numericality: true,
					length: { minimum: 10, maximum: 15},
					format: { with: VALID_MOBILE_REGEX }
end
