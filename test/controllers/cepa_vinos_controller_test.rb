require "test_helper"

class CepaVinosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cepa_vino = cepa_vinos(:one)
  end

  test "should get index" do
    get cepa_vinos_url
    assert_response :success
  end

  test "should get new" do
    get new_cepa_vino_url
    assert_response :success
  end

  test "should create cepa_vino" do
    assert_difference('CepaVino.count') do
      post cepa_vinos_url, params: { cepa_vino: {  } }
    end

    assert_redirected_to cepa_vino_url(CepaVino.last)
  end

  test "should show cepa_vino" do
    get cepa_vino_url(@cepa_vino)
    assert_response :success
  end

  test "should get edit" do
    get edit_cepa_vino_url(@cepa_vino)
    assert_response :success
  end

  test "should update cepa_vino" do
    patch cepa_vino_url(@cepa_vino), params: { cepa_vino: {  } }
    assert_redirected_to cepa_vino_url(@cepa_vino)
  end

  test "should destroy cepa_vino" do
    assert_difference('CepaVino.count', -1) do
      delete cepa_vino_url(@cepa_vino)
    end

    assert_redirected_to cepa_vinos_url
  end
end
