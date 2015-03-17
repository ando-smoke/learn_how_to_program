class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.text :topic_text
      t.integer :section_id

      t.timestamps null: false
    end
  end
end
