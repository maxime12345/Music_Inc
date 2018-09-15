class Album < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :title, :description, :author, :photo, presence: true
  belongs_to :user
end
