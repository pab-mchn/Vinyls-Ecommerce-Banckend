require "test_helper"

class VinylsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vinyl = vinyls(:one)
  end

  test "should get index" do
    get vinyls_url, as: :json
    assert_response :success
  end

  test "should create vinyl" do
    assert_difference("Vinyl.count") do
      post vinyls_url, params: { vinyl: { band: @vinyl.band, name: @vinyl.name, price: @vinyl.price } }, as: :json
    end

    assert_response :created
  end

  test "should show vinyl" do
    get vinyl_url(@vinyl), as: :json
    assert_response :success
  end

  test "should update vinyl" do
    patch vinyl_url(@vinyl), params: { vinyl: { band: @vinyl.band, name: @vinyl.name, price: @vinyl.price } }, as: :json
    assert_response :success
  end

  test "should destroy vinyl" do
    assert_difference("Vinyl.count", -1) do
      delete vinyl_url(@vinyl), as: :json
    end

    assert_response :no_content
  end
end
