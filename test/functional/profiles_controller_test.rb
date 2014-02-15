require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: users(:jason).profile_name
    assert_response :success
    assert_template 'profiles/show'
  end
  test "not found" do
  	get :show, id: "not exist"
  	assert_response :not_found

  end

  test "only show the correct statuses" do
  get :show, id: users(:jason).profile_name
  	assigns(:statuses).each do |status|
  		assert_equal users(:jason), status.user 
  	end
  end
end
