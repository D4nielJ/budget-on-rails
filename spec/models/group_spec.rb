require 'rails_helper'

RSpec.describe Group, type: :model do
  let!(:user) { create(:user) }
  let!(:reports) { create_list(:report, 10, author_id: user.id) }
  let!(:groups) { create_list(:group, 10, user_id: user.id) }
  let!(:group) { groups.first }

  it 'is a valid group' do
    expect(group).to be_valid
  end

  it 'is has the correct attributes' do
    record = Group.find(group.id)
    expect(record.name).to eql(group.name)
    expect(record.icon).to eql(group.icon)
  end

  it 'is not valid when required attributes are nil' do
    group.name = nil
    expect(group).to_not be_valid
  end

  it 'is not valid when required attributes are nil' do
    group.icon = nil
    expect(group).to_not be_valid
  end

  it 'is not valid when URL is not correct' do
    group.icon = 'anything'
    expect(group).to_not be_valid
  end

  it 'you can add reports to it' do
    group.reports << reports
    record = Group.find(group.id)
    expect(record.reports.first).to eql(reports.first)
    expect(record.reports.last).to eql(reports.last)
  end
end
