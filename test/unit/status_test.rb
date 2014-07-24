require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "that a status requires contenet" do
    status = Status.new
    assert !status.save
    assert !status.errors[:contenet].empty?
  end

  test "that a status's contenet is at least 2 letters" do
    status = Status.new
    status.contenet = "H"
    assert !status.save
    assert !status.errors[:contenet].empty?
  end 

  test "that a status has a user id" do
    status = Status.new
    status.contenet = "Hello"

    assert !status.save
    assert !status.errors[:user_id].empty?
  end
end
