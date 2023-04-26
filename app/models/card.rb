class Card < ApplicationRecord
  has_many :children_relationships, class_name: 'Edge',
                                    foreign_key: 'child_id',
                                    dependent: :destroy
  has_many :children, through: :children_relationships, source: :parent
  has_many :parents_relationships, class_name: 'Edge',
                                   foreign_key: 'parent_id',
                                   dependent: :destroy
  has_many :parents, through: :parents_relationships, source: :child
  def connect(other_card)
    children << other_card
  end

  def disconnect(other_card)
    children_relationships.find_by(child_id: other_card.id).destroy
  end

  def connect?(other_card)
    children.include?(other_card)
  end
end
