class Topic < ApplicationRecord
  belongs_to :forum
  belongs_to :user
  has_many :posts, :dependent => :destroy

  def most_recent_post
    post = Post.where(:topic_id => self.id).order("created_at").last

    return post
  end
end
