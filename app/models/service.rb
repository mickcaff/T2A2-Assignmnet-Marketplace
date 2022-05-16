class Service < ApplicationRecord
  belongs_to :provider, class_name: 'User'

  validates :title, presence: true
  
  enum :status, {draft: 0, published: 1, archived: 2}

  scope :published, -> { where(status: :published) }
end
