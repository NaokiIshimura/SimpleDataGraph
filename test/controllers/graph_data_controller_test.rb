require 'test_helper'

class GraphDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graph_datum = graph_data(:one)
  end

  test "should get index" do
    get graph_data_url
    assert_response :success
  end

  test "should get new" do
    get new_graph_datum_url
    assert_response :success
  end

  test "should create graph_datum" do
    assert_difference('GraphDatum.count') do
      post graph_data_url, params: { graph_datum: { data1: @graph_datum.data1, data2: @graph_datum.data2, data3: @graph_datum.data3, user_id: @graph_datum.user_id } }
    end

    assert_redirected_to graph_datum_url(GraphDatum.last)
  end

  test "should show graph_datum" do
    get graph_datum_url(@graph_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_graph_datum_url(@graph_datum)
    assert_response :success
  end

  test "should update graph_datum" do
    patch graph_datum_url(@graph_datum), params: { graph_datum: { data1: @graph_datum.data1, data2: @graph_datum.data2, data3: @graph_datum.data3, user_id: @graph_datum.user_id } }
    assert_redirected_to graph_datum_url(@graph_datum)
  end

  test "should destroy graph_datum" do
    assert_difference('GraphDatum.count', -1) do
      delete graph_datum_url(@graph_datum)
    end

    assert_redirected_to graph_data_url
  end
end
