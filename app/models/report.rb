class Report < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :groups
  accepts_nested_attributes_for :groups

  validates_presence_of :name
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
