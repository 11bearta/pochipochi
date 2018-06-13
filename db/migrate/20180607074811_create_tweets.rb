class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.integer :tag_id
      t.text :text
      t.text :free_word
      t.text :image_id

      t.timestamps
    end
  end
end
