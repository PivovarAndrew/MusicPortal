require "test_helper"

class UserAlbumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_album = user_albums(:one)
  end

  test "should get index" do
    get user_albums_url
    assert_response :success
  end

  test "should get new" do
    get new_user_album_url
    assert_response :success
  end

  test "should create user_album" do
    assert_difference('UserAlbum.count') do
      post user_albums_url, params: { user_album: { create: @user_album.create, index: @user_album.index, new: @user_album.new } }
    end

    assert_redirected_to user_album_url(UserAlbum.last)
  end

  test "should show user_album" do
    get user_album_url(@user_album)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_album_url(@user_album)
    assert_response :success
  end

  test "should update user_album" do
    patch user_album_url(@user_album), params: { user_album: { create: @user_album.create, index: @user_album.index, new: @user_album.new } }
    assert_redirected_to user_album_url(@user_album)
  end

  test "should destroy user_album" do
    assert_difference('UserAlbum.count', -1) do
      delete user_album_url(@user_album)
    end

    assert_redirected_to user_albums_url
  end
end
