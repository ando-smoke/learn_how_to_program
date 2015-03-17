require 'rails_helper'

describe Section do
  it { should validate_presence_of :name }
  it { should belong_to :lesson }
  it { should have_many :topics }
end
