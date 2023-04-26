class Edge < ApplicationRecord
  belongs_to :parent, class_name: 'Card'
  belongs_to :child, class_name: 'Card'
  validates :parent_id, presence: true
  validates :child_id, presence: true
  validate :self_loop?

  def self_loop?
    return unless parent_id.eql?(child_id)

    errors.add(:parent_id, 'must be other than Child')
  end
end
