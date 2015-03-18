class Topic < ActiveRecord::Base
  belongs_to :section
  validates :name, presence: true
  validates :topic_text, presence: true
  validates :sort_id, presence: true, uniqueness: true

  def next
    next_topic = self
    if self.sort_id != Topic.maximum('sort_id')
      index = self.sort_id + 1
      next_topic = Topic.where('sort_id > ?', next_topic.sort_id)
                        .order('sort_id ASC').first
    end
    next_topic
  end
end
