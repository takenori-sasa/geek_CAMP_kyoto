class Card < ApplicationRecord
  has_many :children_relationships, class_name: 'Edge',
                                    foreign_key: 'child_id',
                                    dependent: :destroy
  has_many :children, through: :children_relationships, source: :child
  has_many :parents_relationships, class_name: 'Edge',
                                   foreign_key: 'parent_id',
                                   dependent: :destroy
  has_many :parents, through: :parents_relationships, source: :parent
end
