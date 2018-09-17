require 'rails_helper'

RSpec.describe Album, type: :model do
  before do
    @user = User.create(
      email: 'toto@example.com',
      password: 'secret-password'
    )
  end

  it 'is valid with a user, a description, an author and a photo' do |variable|
    album = Album.new(
      user: @user,
      title: 'Thriller',
      description: 'lorem ipsum',
      author: 'Michael Jackson',
      photo: open('https://res.cloudinary.com/maxime/image/upload/v1537184062/MusicIncTest/Album_cover/220px-Michael_Jackson_-_Thriller.png')
    )
    expect(album).to be_valid
  end

  it "is invalid without a user" do
    album = Album.new(
      title: 'Thriller',
      description: 'lorem ipsum',
      author: 'Michael Jackson',
      photo: open('https://res.cloudinary.com/maxime/image/upload/v1537184062/MusicIncTest/Album_cover/220px-Michael_Jackson_-_Thriller.png')
    )
    album.valid?
    expect(album.errors[:user]).to include("must exist")
  end

  it "is invalid without a title" do
    album = Album.new(
      user: @user,
      description: 'lorem ipsum',
      author: 'Michael Jackson',
      photo: open('https://res.cloudinary.com/maxime/image/upload/v1537184062/MusicIncTest/Album_cover/220px-Michael_Jackson_-_Thriller.png')
    )
    album.valid?
    expect(album.errors[:title]).to include("can't be blank")
  end

  it "is invalid without a description" do
    album = Album.new(
      user: @user,
      title: 'Thriller',
      author: 'Michael Jackson',
      photo: open('https://res.cloudinary.com/maxime/image/upload/v1537184062/MusicIncTest/Album_cover/220px-Michael_Jackson_-_Thriller.png')
    )
    album.valid?
    expect(album.errors[:description]).to include("can't be blank")
  end

  it "is invalid without a author" do
    album = Album.new(
      user: @user,
      title: 'Thriller',
      description: 'lorem ipsum',
      photo: open('https://res.cloudinary.com/maxime/image/upload/v1537184062/MusicIncTest/Album_cover/220px-Michael_Jackson_-_Thriller.png')
    )
    album.valid?
    expect(album.errors[:author]).to include("can't be blank")
  end

  it "is invalid without a photo" do
    album = Album.new(
      user: @user,
      title: 'Thriller',
      description: 'lorem ipsum',
      author: 'Michael Jackson'
    )
    album.valid?
    expect(album.errors[:photo]).to include("can't be blank")
  end
end

