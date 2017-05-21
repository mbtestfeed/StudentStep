require 'test_helper'

class SubStuLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_stu_link = sub_stu_links(:one)
  end

  test "should get index" do
    get sub_stu_links_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_stu_link_url
    assert_response :success
  end

  test "should create sub_stu_link" do
    assert_difference('SubStuLink.count') do
      post sub_stu_links_url, params: { sub_stu_link: {  } }
    end

    assert_redirected_to sub_stu_link_url(SubStuLink.last)
  end

  test "should show sub_stu_link" do
    get sub_stu_link_url(@sub_stu_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_stu_link_url(@sub_stu_link)
    assert_response :success
  end

  test "should update sub_stu_link" do
    patch sub_stu_link_url(@sub_stu_link), params: { sub_stu_link: {  } }
    assert_redirected_to sub_stu_link_url(@sub_stu_link)
  end

  test "should destroy sub_stu_link" do
    assert_difference('SubStuLink.count', -1) do
      delete sub_stu_link_url(@sub_stu_link)
    end

    assert_redirected_to sub_stu_links_url
  end
end
