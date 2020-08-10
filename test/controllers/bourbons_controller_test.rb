require 'test_helper'

class BourbonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bourbon = bourbons(:one)
  end

  test "should get index" do
    get bourbons_url, as: :json
    assert_response :success
  end

  test "should create bourbon" do
    assert_difference('Bourbon.count') do
      post bourbons_url, params: { bourbon: { distillery: @bourbon.distillery, flavornotes: @bourbon.flavornotes, name: @bourbon.name, pairing: @bourbon.pairing, proof: @bourbon.proof } }, as: :json
    end

    assert_response 201
  end

  test "should show bourbon" do
    get bourbon_url(@bourbon), as: :json
    assert_response :success
  end

  test "should update bourbon" do
    patch bourbon_url(@bourbon), params: { bourbon: { distillery: @bourbon.distillery, flavornotes: @bourbon.flavornotes, name: @bourbon.name, pairing: @bourbon.pairing, proof: @bourbon.proof } }, as: :json
    assert_response 200
  end

  test "should destroy bourbon" do
    assert_difference('Bourbon.count', -1) do
      delete bourbon_url(@bourbon), as: :json
    end

    assert_response 204
  end
end
