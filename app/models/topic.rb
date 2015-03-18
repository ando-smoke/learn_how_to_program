class Topic < ActiveRecord::Base
  belongs_to :section
  validates :name, presence: true
  validates :topic_text, presence: true
  validates :sort_id, presence: true

  def next

  end
end
