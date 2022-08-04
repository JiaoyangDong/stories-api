class Comment < ApplicationRecord
  belongs_to :story

  validates :content, presence: true
  validates :story, presence: true
end
