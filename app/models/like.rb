class Like < ApplicationRecord
  belongs_to :author_id, class_name: 'User'
  belongs_to :post

  def three_most_recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
