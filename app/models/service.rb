class Service < ApplicationRecord
  belongs_to :provider, class_name: 'User'

  validates :title, presence: true
  
  enum :status, {published: 0, draft: 1, archived: 2}

  scope :published, -> { where(status: :published) }

  has_one_attached :cover_image
  has_many :comments
end
