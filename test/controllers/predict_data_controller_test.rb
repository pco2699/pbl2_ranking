require 'test_helper'

class PredictDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @predict_datum = predict_data(:one)
  end

  test "should get index" do
    get predict_data_url
    assert_response :success
  end

  test "should get new" do
    get new_predict_datum_url
    assert_response :success
  end

  test "should create predict_datum" do
    assert_difference('PredictDatum.count') do
      post predict_data_url, params: { predict_datum: { beautiful_sky: @predict_datum.beautiful_sky, image_name: @predict_datum.image_name, not_beautiful_sky: @predict_datum.not_beautiful_sky, other: @predict_datum.other } }
    end

    assert_redirected_to predict_datum_url(PredictDatum.last)
  end

  test "should show predict_datum" do
    get predict_datum_url(@predict_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_predict_datum_url(@predict_datum)
    assert_response :success
  end

  test "should update predict_datum" do
    patch predict_datum_url(@predict_datum), params: { predict_datum: { beautiful_sky: @predict_datum.beautiful_sky, image_name: @predict_datum.image_name, not_beautiful_sky: @predict_datum.not_beautiful_sky, other: @predict_datum.other } }
    assert_redirected_to predict_datum_url(@predict_datum)
  end

  test "should destroy predict_datum" do
    assert_difference('PredictDatum.count', -1) do
      delete predict_datum_url(@predict_datum)
    end

    assert_redirected_to predict_data_url
  end
end
