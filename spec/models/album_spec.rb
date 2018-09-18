# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Album, type: :model do
  it 'is valid with a user, a description, an author and a photo' do |_variable|
    album = FactoryBot.build(:album)
    expect(album).to be_valid
  end

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:author) }
  it { should belong_to(:user) }
end
