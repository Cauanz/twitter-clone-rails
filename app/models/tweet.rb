class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_one_attached :image
  belongs_to :retweet, class_name: "Tweet", optional: true

  validates :body, length: {maximum: 255}
  validates :user_id, uniqueness: { scope: :retweet_id }, if: :retweet_id?
end
