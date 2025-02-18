class Developer < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  has_one_attached :cover_image

  validates :name, presence: true
  validates :email, presence: true
  validates :available_on, presence: true
  validates :hero, presence: true
  validates :bio, presence: true
  validates :avatar, content_type: ["image/png", "image/jpg", "image/jpeg"],
    max_file_size: 2.megabytes
  validates :cover_image, content_type: ["image/png", "image/jpg", "image/jpeg", "image/gif"],
    max_file_size: 10.megabytes
end
