class Topic < ActiveRecord::Base
  belongs_to :section
  validates :name, presence: true
  validates :topic_text, presence: true
  validates :sort_id, presence: true, uniqueness: true

  def next
    next_topic = self
    if self.sort_id != Topic.maximum('sort_id')
      next_topic = Topic.where('sort_id > ?', next_topic.sort_id)
                        .order('sort_id ASC').first
    end
    next_topic
  end

  def previous
    previous_topic = self
    if self.sort_id != Topic.minimum('sort_id')
      previous_topic = Topic.where('sort_id < ?', previous_topic.sort_id)
                        .order('sort_id DESC').first
    end
    previous_topic
  end
end
