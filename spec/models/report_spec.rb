require 'rails_helper'

RSpec.describe Report, type: :model do
  let!(:user) { create(:user) }
  let!(:reports) { create_list(:report, 10, author_id: user.id) }
  let!(:groups) { create_list(:group, 10, user_id: user.id) }
  let!(:report) { reports.first }

  it 'is a valid report' do
    expect(report).to be_valid
  end

  it 'is has the correct attributes' do
    record = Report.find(report.id)
    expect(record.name).to eql(report.name)
    expect(record.amount).to eql(report.amount)
  end

  it 'is not valid when required attributes are nil' do
    report.name = nil
    expect(report).to_not be_valid
  end

  it 'is not valid when required attributes are nil' do
    report.amount = nil
    expect(report).to_not be_valid
  end

  it 'it is valid up to infinity' do
    report.amount = Float::INFINITY
    expect(report).to be_valid
  end

  it 'it is not valid if negative number' do
    report.amount = -1
    expect(report).to_not be_valid
  end

  it 'it is not valid if negative number' do
    report.amount = - Float::INFINITY
    expect(report).to_not be_valid
  end
end
