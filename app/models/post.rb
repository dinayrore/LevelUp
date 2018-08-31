class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  after_create do
    post = Post.find_by(id: self.id)
  end

  before_update do
    post = Post.find_by(id:self.id)
  end
end
