require "application_system_test_case"

class PredictDataTest < ApplicationSystemTestCase
  setup do
    @predict_datum = predict_data(:one)
  end

  test "visiting the index" do
    visit predict_data_url
    assert_selector "h1", text: "Predict Data"
  end

  test "creating a Predict datum" do
    visit predict_data_url
    click_on "New Predict Datum"

    fill_in "Beautiful Sky", with: @predict_datum.beautiful_sky
    fill_in "Image Name", with: @predict_datum.image_name
    fill_in "Not Beautiful Sky", with: @predict_datum.not_beautiful_sky
    fill_in "Other", with: @predict_datum.other
    click_on "Create Predict datum"

    assert_text "Predict datum was successfully created"
    click_on "Back"
  end

  test "updating a Predict datum" do
    visit predict_data_url
    click_on "Edit", match: :first

    fill_in "Beautiful Sky", with: @predict_datum.beautiful_sky
    fill_in "Image Name", with: @predict_datum.image_name
    fill_in "Not Beautiful Sky", with: @predict_datum.not_beautiful_sky
    fill_in "Other", with: @predict_datum.other
    click_on "Update Predict datum"

    assert_text "Predict datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Predict datum" do
    visit predict_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Predict datum was successfully destroyed"
  end
end
