class Tab < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :slug, presence: true
  belongs_to :organisation
end
