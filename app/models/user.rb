class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :services, foreign_key: :provider_id
  has_many :comments

  has_one :profile
  accepts_nested_attributes_for :profile
end
