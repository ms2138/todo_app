class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :destroy

  validates :title, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 10 }

  def has_completed_items?
    todo_items.complete.size > 0
  end

  def has_incomplete_items?
    todo_items.incomplete.size > 0
  end
end
