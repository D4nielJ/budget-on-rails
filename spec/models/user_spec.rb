require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { create(:user) }
  let!(:first_name) { user.first_name }
  let!(:last_name) { user.last_name }
  let!(:email) { user.email }

  it 'is a valid user' do
    expect(user).to be_valid
  end

  it 'is has the correct attributes' do
    record = User.find(user.id)
    expect(record.first_name).to eql(first_name)
    expect(record.last_name).to eql(last_name)
    expect(record.email).to eql(email)
  end

  it 'is not valid when required attributes are nil' do
    user.first_name = nil
    expect(user).to_not be_valid
  end

  it 'is not valid when required attributes are nil' do
    user.last_name = nil
    expect(user).to_not be_valid
  end

  it 'is not valid when required attributes are nil' do
    user.email = nil
    expect(user).to_not be_valid
  end

  it 'is not valid when required attributes are nil' do
    user.password = nil
    expect(user).to_not be_valid
  end
end
