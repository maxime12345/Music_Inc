# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with an email and a password' do
    expect(FactoryBot.create(:user)).to be_valid
  end

  it 'is invalid without an email address' do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'is invalid without a password' do
    user = FactoryBot.build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  it 'is invalid with a duplicate email address' do
    FactoryBot.create(:user, email: 'toto@example.com')
    user = FactoryBot.build(:user, email: 'toto@example.com')
    user.valid?
    expect(user.errors[:email]).to include('has already been taken')
  end
end
