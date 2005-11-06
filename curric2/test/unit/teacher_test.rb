require File.dirname(__FILE__) + '/../test_helper'

class TeacherTest < Test::Unit::TestCase
  fixtures :teachers

  def setup
    @teacher = Teacher.find(1)
  end

  # Replace this with your real tests.
  def test_truth
    assert_kind_of Teacher,  @teacher
  end
end
