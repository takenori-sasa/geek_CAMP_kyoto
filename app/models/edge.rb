class Edge < ApplicationRecord
  belongs_to :parent, class_name: 'Card'
  belongs_to :child, class_name: 'Card'
  validates :parent_id, presence: true
  validates :child_id, presence: true
end
