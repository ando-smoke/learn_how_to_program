require 'rails_helper'

describe Topic do
  it { should validate_presence_of :name }
  it { should validate_presence_of :topic_text }
  it { should validate_presence_of :sort_id }
  it { should validate_uniqueness_of :sort_id }
  it { should belong_to :section }

  context '#next' do
    it 'returns the topic with the next-highest sort_id than ' \
      'the current topic' do
      current_topic = Topic.create(
        name: 'topic1',
        topic_text: 'blah blah blah',
        sort_id: 1
      )
      next_topic = Topic.create(
        name: 'topic2',
        topic_text: 'blah blah blah',
        sort_id: 2
      )
      expect(current_topic.next).to eq next_topic
    end
  end

  # context '#previous' do
  #   it 'returns the topic with the next-lowest sort_id than ' \
  #     'the current topic' do
  #     current_topic = Topic.create(
  #       name: 'topic1',
  #       topic_text: 'blah blah blah',
  #       sort_id: 1
  #     )
  #     next_topic = Topic.create(
  #       name: 'topic2',
  #       topic_text: 'blah blah blah',
  #       sort_id: 2
  #     )
  #     expect(next_topic.previous).to eq current_topic
  #   end
  # end
end
