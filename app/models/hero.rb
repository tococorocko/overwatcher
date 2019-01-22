class Hero < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :portrait, presence: true, uniqueness: true
  validates :background, presence: true, uniqueness: true
  validates :link, presence: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
