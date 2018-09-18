require 'rails_helper'
require './spec/support/login_support'

RSpec.feature "Albums", type: :feature do

  scenario "as a guest, I can sign up" do
    visit root_path
    click_link "sign up"

    fill_in "Email", with: "toto@example.com"
    fill_in "user_password", with: "secret-password"
    fill_in "Password confirmation", with: "secret-password"
    click_button "Sign up"
    expect(page).to have_content "Welcome! You have signed up successfully"
  end

  scenario "as a guest, I can sign in" do
    user = FactoryBot.create(:user)

    sign_in_as user

    expect(page).to have_content "Signed in successfully"
  end

  scenario "as a guest, I can see all albums" do
    user1 = FactoryBot.create(:album)
    user2 = FactoryBot.create(:album)

    visit root_path

    expect(page).to have_content user1.title
    expect(page).to have_content user2.title
  end

  scenario "as a guest, I can see album's details" do
    FactoryBot.create(:album)

    visit root_path
    click_link "MICHAEL JACKSON"
    expect(page).to have_content "lorem ipsum"
  end

  scenario "as a guest, I can search album by name" do
    user1 = FactoryBot.create(:album)
    user2 = FactoryBot.create(:album)

    visit root_path

    select "title", from: "critere"
    fill_in "keyword", with: user1.title
    click_on "Search"
    expect(page).to have_content user1.title
    expect(page).to_not have_content user2.title
  end

  scenario "as a connected user, I can creates a new album" do
    user = FactoryBot.create(:user)

    sign_in_as user

    expect {
      click_link "add a new album"
      fill_in "Title", with: "New Title"
      fill_in "Description", with: "New Description"
      fill_in "Author", with: "New Author"
      click_button "Create Album"

      expect(page).to have_content "New Title"
      expect(page).to have_content "New Description"
      expect(page).to have_content "NEW AUTHOR"
    }.to change(user.albums, :count).by(1)
  end

  scenario "as a connected user, I can update an album I created" do
    user = FactoryBot.create(:user)
    album = FactoryBot.create(:album, user: user)

    sign_in_as user

    click_link "MICHAEL JACKSON"

    click_on(class: 'edit')

    fill_in "Title", with: "Thriller1 [UPDATED]"
    fill_in "Description", with: "lorem ipsum [UPDATED]"
    fill_in "Author", with: "Michael Jackson [UPDATED]"
    click_button "Update Album"

    expect(page).to have_content "Thriller1 [UPDATED]"
    expect(page).to have_content "lorem ipsum [UPDATED]"
    expect(page).to have_content "MICHAEL JACKSON [UPDATED]"
  end

  scenario "as a connecter user, I can delete an album I created" do
    user = FactoryBot.create(:user)
    album = FactoryBot.create(:album, user: user)

    sign_in_as user

    click_link "MICHAEL JACKSON"
    click_on(class: 'delete')
    visit root_path

    expect(page).to_not have_content "MICHAEL JACKSON"
  end

  scenario "as a french user, I can change the language of the site in french" do
    visit root_path
    click_link "fr"
    expect(page).to have_content "Rechercher par"
    click_link "en"
  end

end

