class Forum < ApplicationRecord
  has_many :topics, :dependent => :destroy

  def most_recent_post
    topic = Topic.where(:forum_id => self.id).order("created_at").last

    return topic
  end
end
