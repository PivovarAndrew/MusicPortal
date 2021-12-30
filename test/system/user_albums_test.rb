require "application_system_test_case"

class UserAlbumsTest < ApplicationSystemTestCase
  setup do
    @user_album = user_albums(:one)
  end

  test "visiting the index" do
    visit user_albums_url
    assert_selector "h1", text: "User Albums"
  end

  test "creating a User album" do
    visit user_albums_url
    click_on "New User Album"

    fill_in "Create", with: @user_album.create
    fill_in "Index", with: @user_album.index
    fill_in "New", with: @user_album.new
    click_on "Create User album"

    assert_text "User album was successfully created"
    click_on "Back"
  end

  test "updating a User album" do
    visit user_albums_url
    click_on "Edit", match: :first

    fill_in "Create", with: @user_album.create
    fill_in "Index", with: @user_album.index
    fill_in "New", with: @user_album.new
    click_on "Update User album"

    assert_text "User album was successfully updated"
    click_on "Back"
  end

  test "destroying a User album" do
    visit user_albums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User album was successfully destroyed"
  end
end
