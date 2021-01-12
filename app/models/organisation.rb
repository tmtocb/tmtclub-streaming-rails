class Organisation < ApplicationRecord
  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true
  has_many :tabs
end
