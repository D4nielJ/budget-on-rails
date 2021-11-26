require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { create(:user) }
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
    icon.name = nil
    expect(group).to_not be_valid
  end

  it 'is a valid URL' do
    icon.name = 'anything'
    expect(group).to_not be_valid
  end
end
