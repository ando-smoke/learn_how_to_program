require 'rails_helper'

describe Topic do
  it { should validate_presence_of :name }
  it { should validate_presence_of :topic_text }
  it { should belong_to :section }
end
