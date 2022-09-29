class Pet < ApplicationRecord
  has_one_attached :photo
  validates :name, presence: true, length: { minimum: 2 }
  validates :category, presence: true,
                       inclusion: { in: ['Dog', 'Cat', 'Other'],
                                    message: "%{value} is not a valid category" }
  validates :birth, presence: true

  before_validation :capitalize_validation!

  def capitalize_validation!
    name.capitalize!
    category.capitalize!
  end
end
