require 'test_helper'

class StudentQualifiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_qualifier = student_qualifiers(:one)
  end

  test "should get index" do
    get student_qualifiers_url
    assert_response :success
  end

  test "should get new" do
    get new_student_qualifier_url
    assert_response :success
  end

  test "should create student_qualifier" do
    assert_difference('StudentQualifier.count') do
      post student_qualifiers_url, params: { student_qualifier: {  } }
    end

    assert_redirected_to student_qualifier_url(StudentQualifier.last)
  end

  test "should show student_qualifier" do
    get student_qualifier_url(@student_qualifier)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_qualifier_url(@student_qualifier)
    assert_response :success
  end

  test "should update student_qualifier" do
    patch student_qualifier_url(@student_qualifier), params: { student_qualifier: {  } }
    assert_redirected_to student_qualifier_url(@student_qualifier)
  end

  test "should destroy student_qualifier" do
    assert_difference('StudentQualifier.count', -1) do
      delete student_qualifier_url(@student_qualifier)
    end

    assert_redirected_to student_qualifiers_url
  end
end
