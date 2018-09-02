class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.integer  :user_id
      t.text     :achievement
      t.text     :obstacle
      t.text     :goal
      t.integer  :likes,       default: 0
      t.integer  :panic_score, default: 0
      t.boolean  :is_deleted,  default: false
      t.datetime :created_at,  null: false
      t.datetime :updated_at,  null: false
      t.references :user,      foreign_key: true
    end
  end
end
