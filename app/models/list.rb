class List < ApplicationRecord
  has_many :items

  accepts_nested_attributes_for :items
  validates :name, :description, presence: true
  
  def item_attributes=(list_attributes)
    list_attributes.each do |attributes|
      items.build(attributes)
    end
  end
end
