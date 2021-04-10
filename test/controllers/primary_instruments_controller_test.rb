require "test_helper"

class PrimaryInstrumentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get primary_instruments_index_url
    assert_response :success
  end
end
