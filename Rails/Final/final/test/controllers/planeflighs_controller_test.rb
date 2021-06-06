require 'test_helper'

class PlaneflighsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planefligh = planeflighs(:one)
  end

  test "should get index" do
    get planeflighs_url
    assert_response :success
  end

  test "should get new" do
    get new_planefligh_url
    assert_response :success
  end

  test "should create planefligh" do
    assert_difference('Planefligh.count') do
      post planeflighs_url, params: { planefligh: { airline: @planefligh.airline, fromcity: @planefligh.fromcity, number: @planefligh.number, plane_id: @planefligh.plane_id, tocity: @planefligh.tocity } }
    end

    assert_redirected_to planefligh_url(Planefligh.last)
  end

  test "should show planefligh" do
    get planefligh_url(@planefligh)
    assert_response :success
  end

  test "should get edit" do
    get edit_planefligh_url(@planefligh)
    assert_response :success
  end

  test "should update planefligh" do
    patch planefligh_url(@planefligh), params: { planefligh: { airline: @planefligh.airline, fromcity: @planefligh.fromcity, number: @planefligh.number, plane_id: @planefligh.plane_id, tocity: @planefligh.tocity } }
    assert_redirected_to planefligh_url(@planefligh)
  end

  test "should destroy planefligh" do
    assert_difference('Planefligh.count', -1) do
      delete planefligh_url(@planefligh)
    end

    assert_redirected_to planeflighs_url
  end
end
