class User < ApplicationRecord
  has_many :followings1, class_name: "Following", foreign_key: "follower_id"
  has_many :followings2, class_name: "Following", foreign_key: "followed_id"
  has_many :followers, through: :followings2
  has_many :followeds, through: :followings1
end
