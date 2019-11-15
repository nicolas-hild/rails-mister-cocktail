class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  mount_uploader :imageUrl, PhotoUploader

  validates :name, presence: true, uniqueness: true
end
