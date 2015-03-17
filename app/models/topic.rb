class Topic < ActiveRecord::Base
  belongs_to :section
  validates :name, presence: true
  validates :topic_text, presence: true
end
