class Album < ApplicationRecord
  validates :title, :description, :author, :photo, presence: true
  belongs_to :user
end
