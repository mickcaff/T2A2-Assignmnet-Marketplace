class Service < ApplicationRecord
  belongs_to :provider, class_name: 'User'

  validates :title, presence: true
  
  enum :status, [:draft, :published, :archived]
end
