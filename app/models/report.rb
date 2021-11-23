class Report < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :groups

  validates_presence_of :name
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
