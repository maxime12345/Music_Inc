# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with an email and a password' do
    expect(FactoryBot.create(:user)).to be_valid
  end

  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }

  it { should validate_presence_of(:password) }

  it { should have_many(:albums) }
end
