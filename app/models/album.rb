# frozen_string_literal: true

class Album < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :title, :description, :author, presence: true
  belongs_to :user
end
