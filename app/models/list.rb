class List < ApplicationRecord
  ## Make sure name and description are not empty
  validates :name, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false

  has_many :items
end
