class User < ApplicationRecord
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

	# TODO - VALIDAÇÃO NÃO FUNCIONANDO
# validate :cannot_follow_self

# def cannot_follow_self
# 		errors.add(:base, "Cannot follow yourself") if follower_id == following_id
# end

has_many :tweets
has_many :likes

has_many :following_relationships, 
	class_name: "Follow", 
	foreign_key: "follower_id"
	
has_many :followers_relationships, 
	class_name: "Follow", 
	foreign_key: "following_id"
end
