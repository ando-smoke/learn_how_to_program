class AddSortIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :sort_id, :integer
  end
end
