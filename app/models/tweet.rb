class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :replied_to, class_name: 'Tweet', optional: true
  has_many :liked_users, class_name: 'User', foreign_key: 'user_id', through: :like
  has_many :replies, class_name: 'Tweet', foreign_key: 'replied_to_id', dependent: :nullify,
                     inverse_of: 'replied_to'
end
