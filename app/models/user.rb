class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets
  has_many :likes

  has_many :following_relationships, 
            class_name: "Follow", 
            foreign_key: "follower_id"
            
  has_many :followers_relationships, 
            class_name: "Follow", 
            foreign_key: "following_id"
end
