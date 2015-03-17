class Lesson < ActiveRecord::Base
  has_many :sections, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
end
