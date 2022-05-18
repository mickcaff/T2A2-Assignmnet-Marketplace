class Profile < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :username,  presence: true
  
  belongs_to :user
  
  has_one_attached :avatar_image
end
