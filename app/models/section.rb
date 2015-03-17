class Section < ActiveRecord::Base
  belongs_to :lesson
  validates :name, presence: true
end
