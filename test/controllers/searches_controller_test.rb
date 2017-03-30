require 'test_helper'

class SearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search = searches(:one)
  end

  test "should get index" do
    get searches_url
    assert_response :success
  end

  test "should get new" do
    get new_search_url
    assert_response :success
  end

  test "should create search" do
    assert_difference('Search.count') do
      post searches_url, params: { search: { keyword: @search.keyword, max_price: @search.max_price, min_price: @search.min_price, vehicle_type: @search.vehicle_type } }
    end

    assert_redirected_to search_url(Search.last)
  end

  test "should show search" do
    get search_url(@search)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_url(@search)
    assert_response :success
  end

  test "should update search" do
    patch search_url(@search), params: { search: { keyword: @search.keyword, max_price: @search.max_price, min_price: @search.min_price, vehicle_type: @search.vehicle_type } }
    assert_redirected_to search_url(@search)
  end

  test "should destroy search" do
    assert_difference('Search.count', -1) do
      delete search_url(@search)
    end

    assert_redirected_to searches_url
  end
end
