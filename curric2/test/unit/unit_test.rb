require File.dirname(__FILE__) + '/../test_helper'

class UnitTest < Test::Unit::TestCase
  fixtures :units

  def setup
    @unit = Unit.find(1)
  end

  # Replace this with your real tests.
  def test_truth
    assert_kind_of Unit,  @unit
  end
end
