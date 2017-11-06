class Item < ApplicationRecord
  belongs_to :list
  ## Make sure name is not empty
  validates :name, presence: true, allow_blank: false
  ## Item names are sorted ASC by default
  default_scope { order('name') }

end
