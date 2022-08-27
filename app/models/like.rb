class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def three_most_recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
