class Item < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :name, length: {minimum: 3}, presence: true

  default_scope { order('created_at DESC') }
end
