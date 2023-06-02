class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: "It's already on the list"}
  validates :comment, length: { minimum: 6 }
end
