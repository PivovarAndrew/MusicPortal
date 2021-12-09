require "application_system_test_case"

class TracksTest < ApplicationSystemTestCase
  setup do
    @track = tracks(:one)
  end

  test "visiting the index" do
    visit tracks_url
    assert_selector "h1", text: "Tracks"
  end

  test "creating a Track" do
    visit tracks_url
    click_on "New Track"

    fill_in "Age rest", with: @track.age_rest
    fill_in "Countries", with: @track.countries
    fill_in "Description", with: @track.description
    fill_in "Duration", with: @track.duration
    fill_in "Main genre", with: @track.main_genre
    fill_in "Name", with: @track.name
    fill_in "Performer", with: @track.performer
    fill_in "Preview picture", with: @track.preview_picture
    fill_in "Related genres", with: @track.related_genres
    fill_in "Release date", with: @track.release_date
    fill_in "Source link", with: @track.source_link
    fill_in "Tags", with: @track.tags
    click_on "Create Track"

    assert_text "Track was successfully created"
    click_on "Back"
  end

  test "updating a Track" do
    visit tracks_url
    click_on "Edit", match: :first

    fill_in "Age rest", with: @track.age_rest
    fill_in "Countries", with: @track.countries
    fill_in "Description", with: @track.description
    fill_in "Duration", with: @track.duration
    fill_in "Main genre", with: @track.main_genre
    fill_in "Name", with: @track.name
    fill_in "Performer", with: @track.performer
    fill_in "Preview picture", with: @track.preview_picture
    fill_in "Related genres", with: @track.related_genres
    fill_in "Release date", with: @track.release_date
    fill_in "Source link", with: @track.source_link
    fill_in "Tags", with: @track.tags
    click_on "Update Track"

    assert_text "Track was successfully updated"
    click_on "Back"
  end

  test "destroying a Track" do
    visit tracks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Track was successfully destroyed"
  end
end
