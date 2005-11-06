require File.dirname(__FILE__) + '/../test_helper'
require 'classes_controller'

# Re-raise errors caught by the controller.
class ClassesController; def rescue_action(e) raise e end; end

class ClassesControllerTest < Test::Unit::TestCase
  def setup
    @controller = ClassesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
