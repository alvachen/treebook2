require 'test_helper'

class StatusTest < ActiveSupport::TestCase
 test "should have content" do
 	status = Status.new
 	assert !status.save
 	assert !status.errors[:content].empty?
 end
 test "should have a ID" do
  status = Status.new
  status.content ="hello"
  assert !status.save
  assert !status.errors[:user_id].empty?
 end
end
