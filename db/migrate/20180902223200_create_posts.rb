class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.text :achievements
      t.text :obstacles
      t.text :goals
      t.integer :likes, default: 0
      t.integer :panic_score, default: 0
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
