class Post < ApplicationRecord
  validates :achievements, presence: true
  validates :obstacles, presence: true
  validates :goals, presence: true
  validates :panic_score, format: { with: /\d/ }

  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  has_many :comments, dependent: :destroy
end
