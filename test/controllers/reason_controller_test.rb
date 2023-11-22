require "test_helper"

class ReasonControllerTest < ActionDispatch::IntegrationTest
  test "should get appointment:text" do
    get reason_appointment:text_url
    assert_response :success
  end

  test "should get date:date" do
    get reason_date:date_url
    assert_response :success
  end

  test "should get patientid:bigint" do
    get reason_patientid:bigint_url
    assert_response :success
  end

  test "should get doctorid:bigint" do
    get reason_doctorid:bigint_url
    assert_response :success
  end
end
