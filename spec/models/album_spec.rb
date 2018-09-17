require 'rails_helper'

RSpec.describe Album, type: :model do

  before do
    @user = FactoryBot.create(:user)
  end

  it 'is valid with a user, a description, an author and a photo' do |variable|
    album = FactoryBot.build(:album)
    expect(album).to be_valid
  end

  it "is invalid without a user" do
    album = FactoryBot.build(:album, user: nil)
    album.valid?
    expect(album.errors[:user]).to include("must exist")
  end

  it "is invalid without a title" do
    album = FactoryBot.build(:album, title: nil)
    album.valid?
    expect(album.errors[:title]).to include("can't be blank")
  end

  it "is invalid without a description" do
    album = FactoryBot.build(:album, description: nil)
    album.valid?
    expect(album.errors[:description]).to include("can't be blank")
  end

  it "is invalid without a author" do
    album = FactoryBot.build(:album, author: nil)
    album.valid?
    expect(album.errors[:author]).to include("can't be blank")
  end
end

