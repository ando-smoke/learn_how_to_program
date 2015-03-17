class Section < ActiveRecord::Base
  belongs_to :lesson
  has_many :topics, dependent: :destroy
  validates :name, presence: true
end
