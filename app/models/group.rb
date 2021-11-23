class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :reports

  validates_presence_of :name

  def total_expenses
    total = 0
    reports.each { |r| total += r.amount }
    total
  end
end
