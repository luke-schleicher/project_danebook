class Post < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, as: :likeable
  has_many :likers, through: :likes, source: :user

  validates :content, length: { minimum: 1 }

  def self.reversed
    Post.order(created_at: :desc)
  end

  def total_likes
    likes.count
  end

  def random_liker
    likers.sample.full_name
  end

end
