class Comment < ApplicationRecord
  has_closure_tree

  belongs_to :review
  belongs_to :user

  has_many :likes, as: :likeable

  scope :order_desc, ->{order created_at: :desc}
end
