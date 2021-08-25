class User < ApplicationRecord
  # Enums
  enum role: { member: 0, admin: 1 }

  # Associations
  has_many :tweets, dependent: :destroy
  has_many :liked_tweets, class_name: 'Tweet', foreign_key: 'tweet_id', through: :like
  has_one_attached :avatar

  has_secure_token
end
