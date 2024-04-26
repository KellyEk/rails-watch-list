class List < ApplicationRecord
  has_one_attached :uploaded_picture
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true
	validates :name, uniqueness: true
end
